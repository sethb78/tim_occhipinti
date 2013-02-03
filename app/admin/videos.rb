ActiveAdmin.register Video do
  index do
  	column :title
  	column :link
  	default_actions
  end
  form do |f|
  	f.inputs do
  		f.input :title
  		f.input :description, label: "Description (optional)"
  		f.input :link
  		f.input :video_date
  	end
 	f.buttons
 end
end
