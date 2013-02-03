class Video < ActiveRecord::Base
  attr_accessible :link, :title, :video_date, :description
  validates :title, presence: true, length: { maximum: 50 }
  validates :link, presence: true, :format => URI::regexp(%w(http https))
  validates :video_date, presence: true
end
