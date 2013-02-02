ActiveAdmin.register UpcomingEvent do
	index do
		column :title
		column :event_start, label: "Event Date/Time"
		column :location
		column :link, label: "link (optional)"
		default_actions
	end
	form do |f|
		f.inputs do
			f.input :title
			f.input :event_start, label: "Event Date/Time"
			f.input :location
			f.input :link, label: "link (optional)"
			f.input :image
			f.input :remote_image_url, label: "or Image URL"
		end
		f.buttons
	end
end
