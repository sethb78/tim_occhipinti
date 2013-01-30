class Blog < ActiveRecord::Base
  attr_accessible :content, :date, :tagline, :title
end
