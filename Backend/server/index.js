var express = require('express');
var app = express();
var EOS = require('eosjs');
var eos = EOS({
    httpEndpoint: 'http://localhost:8888'});

//satori stuff
var RTM = require('satori');
var endpoint = 'endpoint';
var appkey = 'appkey';

var client = new RTM(endpoint, appkey);
var utils = require('./utils');
var products = require('./products');
var orders = {};

// Cross-site requests to allow communication w frontend
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

// Get a list of all orders
app.get('/orders', function(req, res) {

  var rows = eos.getTableRows();
  var rowss = eos.getTableRows({
    json: true,
    code: "myaccount",
    scope: "myaccount",
    table: "orders"
  }).then(function(res) {
    console.log(JSON.stringify(res));
  });
  console.log(JSON.stringify(rowss));
  res.send(rowss);

  //res.send(eos.getBlock(2));
  /*

  // Return a fake order for testing
  var fakeOrder = {
    orderId: 56,
    productId: 2,
    path: utils.getPathForProduct(56, 2)
  };

  var fakeOrder2 = {
    orderId: 28,
    productId: 5,
    path: utils.getPathForProduct(28, 5)
  };

  var orders = [];
  orders.push(fakeOrder);
  orders.push(fakeOrder2);

  res.send(orders);*/
});

// Order a particular product.
// Return orderId so QR code can be generated
app.get('/order/:productId', function(req, res) {
  var _productId = req.params.productId;
  var _orderId = utils.generateOrderId();
  res.send({
    productId: _productId,
    orderId: _orderId
  });
});

// Scan order at checkpoint, used by android app
// OrderID is derived from QR code.
// CheckpointID is derived from scanning device.
app.get('/checkpoint/:checkpointId/scan/:orderId', function(req, res) {
  var _checkpointId = req.params.checkpointId;
  var _orderId = req.params.orderId;
  res.send({
    checkpointId: _checkpointId,
    orderId: _orderId
  });
});

//receive data from TP link IOT device.
app.get('/receive', function(req, res)){ 
  client.on('enter-connected', function () {
    console.log('Connected to Stream');
  });

  client.on('error', function (error) {
    console.log('Failed to connect', error);
  });

  var channel = client.subscribe('TP Channel', RTM.SubscriptionMode.SIMPLE);

  /* set callback for state transition */
  channel.on('enter-subscribed', function () {
    console.log('Subscribed to: ' + channel.subscriptionId);
  });

  channel.on('leave-subscribed', function () {
    console.log('Unsubscribed from: ' + channel.subscriptionId);
  });

  /* set callback for PDU with specific action */
  channel.on('rtm/subscription/data', function (pdu) {
    pdu.body.messages.forEach(function (msg) {
      console.log('Received Signal from' + msg.who + ' : ' + JSON.stringify(msg));
    });
  });

  channel.on('rtm/subscribe/error', function (pdu) {
    console.log('Failed to subscribe. RTM replied with the error ' +
        pdu.body.error + ': ' + pdu.body.reason);
  });

  channel.on('rtm/subscription/error', function (pdu) {
    console.log('Subscription failed. RTM sent the unsolicited error ' +
        pdu.body.error + ': ' + pdu.body.reason);
  });
}

client.start(); // satori stream start
app.listen(3000, () => console.log('listen port 3000'));
