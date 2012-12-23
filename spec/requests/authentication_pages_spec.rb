require 'spec_helper'

describe "AuthenticationPages" do

	subject { page }
	before { visit signin_path }
	let(:user) { FactoryGirl.create(:user) }
	let(:wrong_user) { FactoryGirl.create(:user, email: "wrong@example.com") }


	describe "Sign in page" do
		it { should have_selector('title', text: 'Sign In') }
		it { should have_selector('h1', text: 'Sign In') }
	end

	describe " Unsuccesful signins" do
		describe " invalid/missing information" do
			before { click_button("Sign In") }
			it { should have_selector('title', text: 'Sign In') }
			it { should have_selector( 'div.alert.alert-error') }
		end

		describe "after visiting another page" do
		 	before { click_link "Home" }
		 	it { should_not have_selector('div.alert.alert-error') }
		end

		describe "signing in as wrong user" do
			before do
				fill_in "Email", 	with: user.email
				fill_in "Password",  with: wrong_user.email
				click_button "Sign In"
			end
			it { should have_selector('title', text: 'Sign In') }
		end
	end

	describe "visiting adim page while not signed in" do
		before { visit admin_path }
		it { should_not have_selector('title', text: 'Administrative Tools') }
		it { should have_selector( 'div.alert.alert-notice') }
	end

	describe "Successful Signin" do
		before do
			visit signin_path
			fill_in "Email", 		with: user.email
			fill_in "Password", 	with: user.password
			click_button "Sign In"
		end
		it { should have_link('Sign Out') }

		describe "followed by signout" do
			before { click_link("Sign Out") }
			it { should_not have_link('Sign Out') }
		end
	end
end
