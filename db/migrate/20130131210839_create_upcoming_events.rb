class CreateUpcomingEvents < ActiveRecord::Migration
  def change
    create_table :upcoming_events do |t|
      t.datetime :event_start
      t.string :title
      t.string :location
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
