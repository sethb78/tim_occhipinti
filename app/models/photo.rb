class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :photo_id, :gallery_id, :remote_image_url
  belongs_to :gallery
  mount_uploader :image, ImageUploader

  default_scope order: 'photos.created_at DESC'

  validates :gallery_id, presence: true

end
