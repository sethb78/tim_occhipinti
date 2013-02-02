ActiveAdmin.register Video do
  index do
  	column :link
  	default_actions
  end
  form do |f|
  	f.inputs do
  		f.input :link
  	end
 	f.buttons
 end
end
