require 'spec_helper'

describe "contributions/show" do
  before(:each) do
    @contribution = assign(:contribution, stub_model(Contribution,
      :name => "Name",
      :address1 => "Address1",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :email => "Email",
      :occupation => "Occupation",
      :employer_name => "Employer Name",
      :employer_address1 => "Employer Address1",
      :employer_address2 => "Employer Address2",
      :employer_city => "Employer City",
      :employer_state => "Employer State",
      :employer_zip => "Employer Zip",
      :amount => "Amount",
      :card_type => "Card Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address1/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Email/)
    rendered.should match(/Occupation/)
    rendered.should match(/Employer Name/)
    rendered.should match(/Employer Address1/)
    rendered.should match(/Employer Address2/)
    rendered.should match(/Employer City/)
    rendered.should match(/Employer State/)
    rendered.should match(/Employer Zip/)
    rendered.should match(/Amount/)
    rendered.should match(/Card Type/)
  end
end
