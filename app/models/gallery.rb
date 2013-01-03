class Gallery < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :photos, dependent: :destroy

  validates :name, presence: true
end
