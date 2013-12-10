ActiveAdmin.register CarouselPicture do
      controller do
      skip_before_filter :getActiveProjects
    end
         index do
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
