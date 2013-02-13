$(document).ready(function(){
	rotatePics(1);
});
	function rotatePics(currentPhoto){
		var numberOfPhotos = $('#photo-carousel-wheel img').length;
		currentPhoto = currentPhoto % numberOfPhotos;

		$('#photo-carousel-wheel img').eq(currentPhoto).fadeOut(function(){
			$('#photo-carousel-wheel img').each(function(i){
				$(this).css(
					'zIndex', ((numberOfPhotos - i) + currentPhoto) %
				numberOfPhotos
				);
			});
			$(this).show();
			setTimeout(function(){rotatePics(++currentPhoto);}, 5000);
		});
	}

