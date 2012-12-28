class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_id
      t.string :screen_name
      t.text :content
      t.string :created_at

      t.timestamps
    end
  end
end
