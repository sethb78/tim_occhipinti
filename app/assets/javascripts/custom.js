$(document).ready(function(){
  slideShow();
  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
  var $parent=$('a[href="' + this.location.pathname + '"]').parent()

if (!document.cookie.match(/(?:^|; *)alert_shown=1/)) {
    $("#overlay_form").fadeIn(1000);
    positionPopup();
    $("#close").click(function(){
    $("#overlay_form").fadeOut(500);
    });

function positionPopup(){
  if(!$("#overlay_form").is(':visible')){
  return;
  }
}
 $(window).bind('resize',positionPopup);


    document.cookie = "alert_shown=1;max-age=" + 60 * 60 * 24 * 365;
 }
});
function slideShow() {
  var current = $('#photo-carousel-container .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.fadeOut('slow').removeClass('show');
  next.fadeIn('slow').addClass('show');
  
  setTimeout(slideShow, 7000);
  $('#twitter-widget-0').css({width: "208px"})



}