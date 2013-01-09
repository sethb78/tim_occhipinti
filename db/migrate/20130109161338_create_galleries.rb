class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :description
      t.integer :gallery_id
      t.string :cover_image

      t.timestamps
    end
  end
end