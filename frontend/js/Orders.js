

var vueProducts = new Vue({
  el: '#orders-parent',
  data: {
    orders: []
  }
})

axios.get("http://206.189.90.181:3000/orders").then(function (result) {
  console.log(JSON.stringify(result.data));

  vueProducts.orders = result.data;
});
