class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :photo_id, :gallery_id
  belongs_to :gallery

  default_scope order: 'photos.created_at DESC'

  validates :gallery_id, presence: true
  validates :image, presence: true

end
