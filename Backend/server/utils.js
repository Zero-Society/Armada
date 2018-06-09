/* 
Generate the data describing the path of a given product, eg
[{name: 'Kowloon warehouse', id:'23'}, {name: 'Hong Kong post office', id:'55'}, {name: 'US post office', id:'498324-99'}]
*/
var getPathForProduct = function(productId, orderId) {
  var path = [];
  path.push({"name": "Kowloon warehouse", "id": "0", "verified": false});
  path.push({"name": "Hong Kong post office", "id":"1", "verified": false});
  path.push({"name": "Customer received", "id":"2", "verified": false});
  return path;
}

module.exports.getPathForProduct = getPathForProduct;