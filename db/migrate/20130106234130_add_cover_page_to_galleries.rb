class AddCoverPageToGalleries < ActiveRecord::Migration
  def change
  	    add_column :galleries, :cover_image, :string

  end
end
