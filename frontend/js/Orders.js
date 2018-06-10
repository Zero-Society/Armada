

// choose, pay, wrap, ship

$('.choose').click(function(){
  choose(0);
});
$('.pay').click(function(){
  choose(1);
});
$('.wrap').click(function(){
  choose(2);
});
$('.ship').click(function(){
  choose(3);
});


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

      $("#first").addClass("active");
  $("#second").removeClass("active");
  $("#third").removeClass("active");
  $("#fourth").removeClass("active");


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

      $("#first").removeClass("active");
  $("#second").addClass("active");
  $("#third").removeClass("active");
  $("#fourth").removeClass("active");

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

      $("#first").removeClass("active");
  $("#second").removeClass("active");
  $("#third").addClass("active");
  $("#fourth").removeClass("active");


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

     $("#first").removeClass("active");
  $("#second").removeClass("active");
  $("#third").removeClass("active");
  $("#fourth").addClass("active");
  }
}














//var oldData = {};

var currentNumber = 0;

var vueProducts = new Vue({
  el: '#orders-parent',
  data: {
    orders: []
  }
})
/*
axios.get("http://206.189.90.181:3000/orders").then(function (result) {
  console.log(JSON.stringify(result.data));

  vueProducts.orders = result.data;
});
*/
var getLatestData = function(next) {
  axios.get("http://206.189.90.181:3000/number").then(function (result) {

    //console.log("/number result: " + JSON.stringify(result));
   
    var number = result.data.number;
    console.log("current number: " + number);
    if (currentNumber != number) {
      console.log("NEW NUMBER: " + number);
      choose(number);
      currentNumber = number;
    }

    /*var newPage = result.data[result.data.length - 1].lastState;

    console.log("CURRENTPAGE " + currentPage + ", NEWPAGE " + newPage);

    if (currentPage != newPage) {
      console.log("RUN ANIMATION ");
      //alert("new page: " + newPage);
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
}, 1000);