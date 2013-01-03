class RemoveGalleryIdFromGallery < ActiveRecord::Migration
  def up
  	remove_column :galleries, :gallery_id
  end

  def down
  end
end
