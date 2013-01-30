class AddDateToLatestNews < ActiveRecord::Migration
  def change
    add_column :latest_news, :date, :date
  end
end
