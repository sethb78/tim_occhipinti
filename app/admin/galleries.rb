ActiveAdmin.register Gallery do
	index do
		column :name
		column :description
		column :cover_image
		column :remote_cover_image_url
		default_actions
	end
   form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :cover_image
      f.input :remote_cover_image_url, :label => "or Cover Image URL"
    end
    f.buttons
  end
end
