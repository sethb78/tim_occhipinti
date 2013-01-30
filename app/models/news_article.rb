class NewsArticle < ActiveRecord::Base
  attr_accessible :title, :date, :source, :snippet, :link
end
