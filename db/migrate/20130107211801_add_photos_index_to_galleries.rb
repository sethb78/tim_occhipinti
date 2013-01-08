class AddPhotosIndexToGalleries < ActiveRecord::Migration


  def change
  add_index :photos, [:gallery_id, :created_at]
end
end