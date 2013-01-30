ActiveAdmin.register Photo do
	index do
	    column :gallery
	    	if :image != nil
	    		column :image
	    	else
	    		column :remote_image_url
	    	end
	    column :description
        default_actions
  	end
	form do |f|
    	f.inputs do
			f.input :gallery_id, :as => :select, :collection => Gallery.all.map {|u| [u.name, u.id]}, :include_blank => false      
	      	f.input :image
	      	f.input :remote_image_url, :label => "or Image URL"
	      	f.input :description
    	end
    	f.buttons
  	end
end
