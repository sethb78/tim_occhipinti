class ChangeColumnNameCarouselPicture < ActiveRecord::Migration
rename_column :carousel_pictures, :image_url, :image_link
end
