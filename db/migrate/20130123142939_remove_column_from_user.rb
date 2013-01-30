class RemoveColumnFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :remote_image_url
  end

  def down
    add_column :users, :remote_image_url, :string
  end
end
