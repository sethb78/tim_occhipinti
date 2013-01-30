class RemoveContentFromLatestNews < ActiveRecord::Migration
  def up
    remove_column :latest_news, :content
  end

  def down
    add_column :latest_news, :content, :text
  end
end
