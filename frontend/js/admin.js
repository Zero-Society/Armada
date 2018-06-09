

var qr = new QRious({
        element: document.getElementById('qr'),
        value: ''
      });

$("#orderProduct").click(function() {
  var _productId = $("#productId").val();
  axios.get("http://localhost:3000/order/" + _productId).then(function(resp) {
    console.log(JSON.stringify(resp));
    console.log(JSON.stringify(resp.data));
    alert(resp.data.orderId);
     qr.value = "" + resp.data.orderId;
  });

 
});
