$(document).ready(function(){
  slideShow();
  if($(window).width() > 760 ){
  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
  var $parent=$('a[href="' + this.location.pathname + '"]').parent();
  fitted_text();
}
if (!document.cookie.match(/(?:^|; *)alert_shown=1/)) {

$("#overlay_form").fadeIn(1000);

 
//close popup
$("#close").click(function(){
$("#overlay_form").fadeOut(500);
return false;
});


 document.cookie = "alert_shown=1;max-age=" + 60 * 60 * 24 * 365;
}


$("iframe").contents().find(".timeline").css("font-size",'4px');


new TWTR.Widget({
  version: 2,
  type: 'profile',
  rpp: 5,
  interval: 6000,
  width: '100%',
  height: 750,
  theme: {
    shell: {
      background: 'transparent',
      color: '#2c458f'
    },
    tweets: {
      background: 'transparent',
      color: 'white',
      links: '$gold'
    }
  },
  features: {
    scrollbar: true,
    loop: true,
    live: true,
    hashtags: true,
    timestamp: true,
    avatars: true,
    behavior: 'all'
  },
}).render().setUser('TimOcchipinti').start();

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