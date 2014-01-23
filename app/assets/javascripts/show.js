// $(function () {
//       $('.btnone4one').hover(function () {
//           console.log($('.sprice').val());
//           var price = $('.sprice').val().toString();
//           console.log(price);
//           $('.sprice').css("text-align", "left");
//           $('.sprice').css("margin-left", "50px");
//           $('.pricespan').show();
//           $('.spricebox').stop(true,true).animate({
//               width: '+=400px'
//           }, 500);
//       }, function () {
//           $('.sprice').css("text-align", "center");
//           $('.pricespan').hide();
//           $('.spricebox').stop(true,true).animate({
//               width: '-=400px'
//           },500)
//       });
//   });

$(function () {

  $('.btnone4one').mouseover(function (){
     var price = $('.spanprice').html();
      price = price * 2;
      console.log(price);
    $('.spanprice').text(price);
    $('.btnone4one').mouseout(function (){
        price = price / 2;
        $('.spanprice').text(price);
    })
  })
});




