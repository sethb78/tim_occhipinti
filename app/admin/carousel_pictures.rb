ActiveAdmin.register CarouselPicture do
 	index do
 		column :id
 		column :name
	 	column :image
	 	column :remote_image_url
	 	default_actions
 	end
 	form do |f|
 		f.inputs do
	 		f.input :image
 			f.input :remote_image_url, :label => "or Image URL"
 		end
 		f.buttons
 	end
end
