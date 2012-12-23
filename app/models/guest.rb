class Guest < ActiveRecord::Base
  attr_accessible :email, :name
end
