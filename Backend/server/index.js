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

  res.send(fakeOrder);
});

app.get('/order/:productId', function(req, res) {
  var _productId = req.params.productId;
  res.send({
    productId: _productId
  });
});

app.get('/checkpoint/:checkpointId/scan/:orderId', function(req, res) {
  var _checkpointId = req.params.checkpointId;
  var _orderId = req.params.orderId;
  res.send({
    checkpointId: _checkpointId,
    orderId: _orderId
  });
});

app.listen(3000, () => console.log('listen port 3000'));