var express = require('express');
var app = express();

var products = require('./products')
var orders = {};

// Cross-site requests
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.get('/products', function(req, res) {
  res.send(products);
});

app.get('/orders', function(req, res) {
  res.send(orders);
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