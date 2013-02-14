$(document).ready(function(){
  slideShow();
});

function slideShow() {
  var current = $('#photo-carousel-container .show');
  var next = current.next().length ? current.next() : current.parent().children(':first');
  
  current.fadeOut('slow').removeClass('show');
  next.fadeIn('slow').addClass('show');
  
  setTimeout(slideShow, 7000);
}
