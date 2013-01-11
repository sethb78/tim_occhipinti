require 'spec_helper'

describe Contribution do

	before do 
		@contribution=Contribution.new(
			name: 				'Example Contributor', 
			address1: 			'123 ABC St',
			city: 				'Hoboken',
			state: 				'NJ',
			zip:   				'12345',
			email:  			'examplecontributor@gmail.com',
			occupation: 		'Web Designer',
			employer_name: 			'Seth B Enterprises',
			employer_address1: 	'123 Main St',
			employer_city: 		'Hoboken',
			employer_state: 	'NJ',
			employer_zip: 		'12345',
			amount: 			'100',
			card_type: 			'Visa',
			card_expires_on: 	1.year.from_now
		)
	end
	subject { @contribution }

	it { should respond_to(:name, :address1, :city, :state, :zip, :email, :occupation, :employer_name, :employer_address1,
							:employer_city, :employer_state, :employer_zip, :amount, :card_type, :card_expires_on) }
end