class AddColumnToCarouselPicture < ActiveRecord::Migration
  def change
    add_column :carousel_pictures, :name, :string
  end
end
