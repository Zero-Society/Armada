

var oldData = {};

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

var getLatestData = function(next) {
  axios.get("http://206.189.90.181:3000/orders").then(function (result) {
    var newData = result.data;
    if (!_.isMatch(oldData, newData)) {
      vueProducts.orders = newData;
      oldData = newData;

      var newPage = result.data[0].lastState;
      alert("new page: " + newPage);
    }
  });
}

setInterval(function() {
  getLatestData();
}, 500);