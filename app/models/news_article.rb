class NewsArticle < ActiveRecord::Base
  attr_accessible :title, :date, :source, :snippet, :link

  validates :snippet, presence: true, length: { maximum: 300 }
end
