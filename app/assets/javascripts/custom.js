$(document).ready(function(){
  slideShow();
  if($(window).width() > 760 ){
    $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
    fitted_text();
    galleries_nav_tab();  
  }

// twitter_box_height();

if (!document.cookie.match(/(?:^|; *)alert_shown=1/)) {



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

function fitted_text(){
var line_height=parseInt($(".hero-unit .content h2").css('height'), 10);
var font_size=24;
if (line_height > 60){
  font_size --;
$(".hero-unit .content h2").css({"font-size": font_size+"px"})
};
};

// function twitter_box_height(){
//   var hero_unit_height=(parseInt($(".main-container .span9").css('height'), 10))- 290;
//   if(hero_unit_height > 700) {
//     hero_unit_height=700
//   }
// $('.twitter_feed').css("max-height", hero_unit_height);
// }

function galleries_nav_tab(){
  if(window.location.toString().contains("galleries")){
    $('.photo_galleries_nav').addClass('active')
  }
}