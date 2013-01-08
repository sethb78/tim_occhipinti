class Gallery < ActiveRecord::Base
  attr_accessible :description, :name, :cover_image
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :description, length: { maximum: 50}
  validates :cover_image, presence: true, :format => URI::regexp(%w(http https))

end
