class Contribution < ActiveRecord::Base
  attr_accessible :address1, :amount, :card_expires_on, :card_type, :city, :email, :employer_address1, :employer_address2, :employer_city, :employer_name, :employer_state, :employer_zip, :name, :occupation, :state, :zip
end
