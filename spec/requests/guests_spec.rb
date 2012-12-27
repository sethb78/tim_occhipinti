require 'spec_helper'

describe "Guests" do

	subject { page }
	before { visit root_path }
	it { should have_button('Sign Up') }

		describe "with invalid info(no info)" do
			it "should not create a guest" do
				expect { click_button('Sign Up').not_to change(Guest, :count).by(1) }
				page.should have_selector('div.alert.alert-error') 
			end
		end

		it "should add an entry to guests table" do
			fill_in "Name", 		with: 'guest name'
			fill_in "Email", 		with: 'guest@email.com'
		expect { click_button('Sign Up').to change(Guest,:count).by(1)}
	end 
end