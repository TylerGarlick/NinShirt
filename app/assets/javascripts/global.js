$(function(){
  $('.carousel').carousel({
    interval: 5000
  });

  $('.dropdown-toggle').dropdown();
  $('.shopping-cart ').hover(function(){
    $('.dropdown-toggle').toogle();
  });
});