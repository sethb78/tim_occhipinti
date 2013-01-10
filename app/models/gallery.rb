class Gallery < ActiveRecord::Base
  attr_accessible :description, :name, :cover_image, :remote_cover_image_url
  has_many :photos, dependent: :destroy
  mount_uploader :cover_image, ImageUploader

  validates :name, length: { maximum: 60}


end
