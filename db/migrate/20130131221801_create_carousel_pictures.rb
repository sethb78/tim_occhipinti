class CreateCarouselPictures < ActiveRecord::Migration
  def change
    create_table :carousel_pictures do |t|
      t.string :image
      t.string :image_url

      t.timestamps
    end
  end
end
