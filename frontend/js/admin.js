$("#orderProduct").click(function() {
  var _productId = $("#productId").val();
  axios.get("http://localhost:3000/order/" + _productId).then(function(resp) {
    alert(JSON.stringify(resp));
  });

  // qr.value = _productId;
});
