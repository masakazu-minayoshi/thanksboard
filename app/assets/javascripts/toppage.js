$(document).on('turbolinks:load', function(){
  $('.slick').slick({
    autoplay:true,  
    dots:true,      
  });
});

$(function(){
  $('a[href^="#"]').click(function(){
    var speed = 500;
    var href= $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' : href);
    var position = target.offset().top;
    $("html, body").animate({scrollTop:position}, speed, "swing");
    return false;
  });
});

window.onload = function() {
  $('#camera').hover(
  function(){$(this).addClass('fluffy');},
  function(){$(this).removeClass('fluffy');}
  );
 };