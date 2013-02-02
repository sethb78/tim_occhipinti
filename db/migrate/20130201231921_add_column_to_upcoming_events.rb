class AddColumnToUpcomingEvents < ActiveRecord::Migration
  def change
    add_column :upcoming_events, :image, :string
    add_column :upcoming_events, :remote_image_url, :string
  end
end
