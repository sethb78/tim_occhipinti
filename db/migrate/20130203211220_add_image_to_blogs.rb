class AddImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :image, :string
    add_column :blogs, :remote_image_url, :string
  end
end
