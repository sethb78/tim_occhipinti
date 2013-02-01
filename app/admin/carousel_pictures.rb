ActiveAdmin.register CarouselPicture do

 	form do |f|
 		f.inputs do
	 		f.input :image
 			f.input :remote_image_url, :label => "or Image URL"
 		end
 		f.buttons
 	end
end
