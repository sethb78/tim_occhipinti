class RemoveDateFromLatestNews < ActiveRecord::Migration
  def up
    remove_column :latest_news, :date
  end

  def down
    add_column :latest_news, :date, :string
  end
end
