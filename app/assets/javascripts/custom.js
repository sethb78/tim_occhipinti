$(document).ready(function(){
  slideShow();
  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
  var $parent=$('a[href="' + this.location.pathname + '"]').parent()

});

function slideShow() {
  var current = $('#photo-carousel-container .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.fadeOut('slow').removeClass('show');
  next.fadeIn('slow').addClass('show');
  
  setTimeout(slideShow, 7000);
  $('#twitter-widget-0').css({width: "208px"})



}