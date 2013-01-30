class RenameLatestNews < ActiveRecord::Migration
    def change
        rename_table :latest_news, :news_articles
end
end