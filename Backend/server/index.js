var express = require('express');
var app = express();

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

  res.send(orders);
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

app.listen(3000, () => console.log('listen port 3000'));