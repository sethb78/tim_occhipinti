class Guest < ActiveRecord::Base
	before_save { |guest| guest.email = email.downcase }

  	attr_accessible :email, :name

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
end
