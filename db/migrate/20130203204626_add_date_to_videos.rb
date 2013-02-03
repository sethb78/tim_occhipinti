class AddDateToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :video_date, :date
  end
end
