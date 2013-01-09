class AddPhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :gallery_id
      t.text :description

      t.timestamps
    end
        add_index :photos, [:gallery_id]
  end
end