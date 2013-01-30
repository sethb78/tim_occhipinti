class CreateLatestNews < ActiveRecord::Migration
  def change
    create_table :latest_news do |t|
      t.string :title
      t.string :date
      t.string :source
      t.text :content

      t.timestamps
    end
  end
end
