ActiveAdmin.register Blog do
	index do
		column :created_at
		column :title
		default_actions
	end
	form do |f|
		f.inputs do
			f.input :title
			f.input :tagline, label: "Tagline (optional)"
			f.input :content
			f.input :image , label: "Upload Image (optional)"
			f.input :remote_image_url, label: "or link to image (optional)"
		end
		f.buttons
	end
  
end
