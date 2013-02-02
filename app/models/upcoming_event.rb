class UpcomingEvent < ActiveRecord::Base
  attr_accessible :description, :event_start, :link, :location, :title, :image, :remote_image_url
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :event_start, presence: true
  validates :location, presence:true
end
