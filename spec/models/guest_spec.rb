require 'spec_helper'

describe Guest do

	before { @guest=Guest.new(name: 'Example Guest', email: 'example@guest.com') }
	subject { @guest }

	it { should respond_to(:name) }
	it { should respond_to(:email) }

	describe "should have name" do
		before { @guest.name = ' ' }
		it { should_not be_valid }
	end

	describe "Name should be under 30 letters" do
		before { @guest.name = 'a'*31 }
		it { should_not be_valid }
	end

	describe "should have email" do
		before { @guest.email = ' ' }
		it { should_not be_valid }
	end

	describe "should be valid email" do
		before do
			addresses  =  %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
		    addresses.each do |invalid_address|
		    	@gurest.email  =  invalid_address
		     end
		    it { should_not be_valid}
		end 
	end

	describe "email is already registered" do
		before do
			dup_guest_email = @guest.dup
			dup_guest_email.email = @guest.email.upcase
			dup_guest_email.save
		end
		it { should_not be_valid }
	end
end
