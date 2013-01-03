class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :photo_id
  belongs_to :gallery

  validates :gallery_id, presence: true
  validates :image, presence: true
end
