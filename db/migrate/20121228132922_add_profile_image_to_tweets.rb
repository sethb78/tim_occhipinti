class AddProfileImageToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :profile_image, :string
    add_column :tweets, :user_name, :string
  end
end
