

// choose, pay, wrap, ship

$('.choose')
$('.pay')
$('.wrap').onclick(function(){
  choose(3);
});
$('.ship')


var choose = function(page) {
  if (page == 0) {
    $(".choose").addClass("active");
    $(".choose > .icon").addClass("active");
    $(".pay").removeClass("active");
    $(".wrap").removeClass("active");
    $(".ship").removeClass("active");
    $(".pay > .icon").removeClass("active");
    $(".wrap > .icon").removeClass("active");
    $(".ship > .icon").removeClass("active");
    $("#line").addClass("one");
    $("#line").removeClass("two");
    $("#line").removeClass("three");
    $("#line").removeClass("four");
  } else if (page == 1) {
     $(".pay").addClass("active");
    $(".pay > .icon").addClass("active");
    $(".choose").removeClass("active");
    $(".wrap").removeClass("active");
    $(".ship").removeClass("active");
    $(".choose > .icon").removeClass("active");
    $(".wrap > .icon").removeClass("active");
    $(".ship > .icon").removeClass("active");
    $("#line").addClass("two");
    $("#line").removeClass("one");
    $("#line").removeClass("three");
    $("#line").removeClass("four");
  } else if (page == 2) {
     $(".wrap").addClass("active");
    $(".wrap > .icon").addClass("active");
    $(".pay").removeClass("active");
    $(".choose").removeClass("active");
    $(".ship").removeClass("active");
    $(".pay > .icon").removeClass("active");
    $(".choose > .icon").removeClass("active");
    $(".ship > .icon").removeClass("active");
    $("#line").addClass("three");
    $("#line").removeClass("two");
    $("#line").removeClass("one");
    $("#line").removeClass("four");
  } else if (page == 3) {
     $(".ship").addClass("active");
    $(".ship > .icon").addClass("active");
    $(".pay").removeClass("active");
    $(".wrap").removeClass("active");
    $(".choose").removeClass("active");
    $(".pay > .icon").removeClass("active");
    $(".wrap > .icon").removeClass("active");
    $(".choose > .icon").removeClass("active");
    $("#line").addClass("four");
    $("#line").removeClass("two");
    $("#line").removeClass("three");
    $("#line").removeClass("one");
  }
}














//var oldData = {};

var currentPage = 0;

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

    var newPage = result.data[0].lastState;

    console.log("CURRENTPAGE " + currentPage + ", NEWPAGE " + newPage);

    if (currentPage != newPage) {
      alert("new page: " + newPage);
      currentPage = newPage;
      choose(newPage);
    } 

    /*var newData = result.data;
    if (!_.isMatch(oldData, newData)) {
      vueProducts.orders = newData;
      oldData = newData;

      var newPage = result.data[0].lastState;
      alert("new page: " + newPage);
    }*/
  });
}

setInterval(function() {
  getLatestData();
}, 2000);