class UpcomingEvent < ActiveRecord::Base
  attr_accessible :description, :event_start, :link, :location, :title

  validates :title, presence: true
  validates :event_start, presence: true
  validates :location, presence:true
end
