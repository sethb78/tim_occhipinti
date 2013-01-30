class AddSnippetFromLatestNews < ActiveRecord::Migration
  def change
    add_column :latest_news, :snippet, :text
  end
end
