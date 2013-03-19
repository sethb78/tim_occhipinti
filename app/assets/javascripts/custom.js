$(document).ready(function(){
  slideShow();
  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
  var $parent=$('a[href="' + this.location.pathname + '"]').parent()

if (!document.cookie.match(/(?:^|; *)alert_shown=1/)) {

$("#overlay_form").fadeIn(1000);

 
//close popup
$("#close").click(function(){
$("#overlay_form").fadeOut(500);
return false;
});


 document.cookie = "alert_shown=1;max-age=" + 60 * 60 * 24 * 365;
}

fitted_text();


});
 

function slideShow() {
  var current = $('#photo-carousel-container .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.fadeOut('slow').removeClass('show');
  next.fadeIn('slow').addClass('show');
  
  setTimeout(slideShow, 7000);
  $('#twitter-widget-0').css({width: "208px"})



}

function fitted_text(){
var line_height=parseInt($(".hero-unit .content h2").css('height'), 10);
var font_size=24;
if (line_height > 72){
  font_size --;
$(".hero-unit .content h2").css({"font-size": font_size+"px"})
};
};