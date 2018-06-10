var express = require('express');
var app = express();
//var EOS = require('eosjs');
//var eos = EOS({
 //   httpEndpoint: 'http://localhost:8888'});

//satori stuff
// var RTM = require('satori');
var endpoint = 'endpoint';
var appkey = 'appkey';

//var client = new RTM(endpoint, appkey);
var utils = require('./utils');
var products = require('./products');
var orders = [];

// Cross-site requests to allow communication w frontend
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});


/*
Go through an order path, and if the checkpointId is found, set verified true. Return new path.
*/
var markCheckpoint = function(path, checkpointId) {
  console.log("In path " + JSON.stringify(path) + " mark " + checkpointId);
  path.forEach(function(part, index, array) {
    // Check the checkpointId
    if (array[index].id == checkpointId) {
      array[index].verified = true;
    }
  });
  console.log("return " + JSON.stringify(path));
  return path;
}

// Get a list of all orders
app.get('/orders', function(req, res) {
  res.send(orders);
});

// Order a particular product.
// Return orderId so QR code can be generated
app.get('/order/:productId', function(req, res) {
  var _productId = req.params.productId;
  var _orderId = utils.generateOrderId();
  var _path = utils.getPathForProduct(_productId, _orderId)
  

  orders.push({
    orderId: _orderId,
    productId: _productId,
    path: _path,
    lastState: 0
  });

  res.send({orderId: _orderId});
});


var number = 0;
app.get('/number', function(req, res) {
  res.send({"number": number});
});

// Scan order at checkpoint, used by android app
// OrderID is derived from QR code.
// CheckpointID is derived from scanning device.
app.get('/checkpoint/:checkpointId/scan/:orderId', function(req, res) {
  var _order = req.params.orderId;
  var checkpoint = req.params.checkpointId;
  var found = false;

  var number = checkpoint;
  console.log("new number: " + number);

  return;
});

//receive data from TP link IOT device.
/*app.get('/receive', function(req, res)){ 
  client.on('enter-connected', function () {
    console.log('Connected to Stream');
  });

  client.on('error', function (error) {
    console.log('Failed to connect', error);
  });

  var channel = client.subscribe('TP Channel', RTM.SubscriptionMode.SIMPLE);


  channel.on('enter-subscribed', function () {
    console.log('Subscribed to: ' + channel.subscriptionId);
  });

  channel.on('leave-subscribed', function () {
    console.log('Unsubscribed from: ' + channel.subscriptionId);
  });


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
*/
// client.start(); // satori stream start
app.listen(3000, () => console.log('listen port 3000'));
