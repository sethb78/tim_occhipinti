class Contribution < ActiveRecord::Base
  attr_accessor :card_number, :card_verification
  attr_accessible :card_number, :card_verification, :legal_notice, :address1, :address2, :amount, :card_expires_on, :card_type, :city, :email, :employer_address1, :employer_address2, :employer_city, :employer_name, :employer_state, :employer_zip, :name, :occupation, :state, :zip, :first_name, :last_name
  attr_writer :current_step
  validates_presence_of :name, :address1, :city, :state, :zip, :if => :personal?
  validates_format_of :zip, :with => %r{\d{5}(-\d{4})?}, :message => "should be 12345 or 12345-1234"
  validates_presence_of :occupation, :employer_name, :employer_address1, :employer_city, :employer_state, :employer_zip, :if => :employer?
  validates_presence_of :legal_notice, :if => :legal_notice?

  def current_step
  	@current_step || steps.first
  end

  def steps
  	%w[personal employer legal_notice]
  end

  def next_step
  	self.current_step = steps[steps.index(current_step)+1]
  end
  def previous_step
  	self.current_step = steps[steps.index(current_step)-1]
  end
  def first_step?
  	current_step == steps.first
  end
  def last_step?
  	current_step == steps.last
  end

  def save_step?
    current_step == steps.third
  end

   def personal?
    current_step == "personal"
  end

  def employer?
  	current_step == "employer"
  end

  def legal_notice?
    current_step == "legal_notice"
  end

def all_valid?
  steps.all? do |step|
    self.current_step = step
    valid?
  end
end

  
end
