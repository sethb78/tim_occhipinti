class RenameImageLinkCarouselPictures < ActiveRecord::Migration
rename_column :carousel_pictures, :image_link, :remote_image_url

end
