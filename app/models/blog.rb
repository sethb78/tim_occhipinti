class Blog < ActiveRecord::Base
  attr_accessible :content, :date, :tagline, :title, :image, :remote_image_url
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :content, presence: true
end
