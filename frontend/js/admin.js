

var qr = new QRious({
        element: document.getElementById('qr'),
        value: ''
      });

qr.value = 13;

$("#orderProduct").click(function() {
  var _productId = $("#productId").val();
  axios.get("http://206.189.90.181:3000/order/" + _productId).then(function(resp) {
    console.log(JSON.stringify(resp));
    console.log(JSON.stringify(resp.data));
     qr.value = "" + resp.data.orderId;
  });

 
});






$("#checkpoint").click(function() {
  var _orderId = $("#order-id").val();
  var _checkpointId = $("#checkpoint-id").val();


  //axios.get("http://localhost:3000/order/" + _productId + "/checkpoint/" + _checkpointId).then(function(resp) {
  axios.get("http://206.189.90.181:3000/checkpoint/" + _checkpointId + "/scan/" + _orderId).then(function(resp) {

  });
});
