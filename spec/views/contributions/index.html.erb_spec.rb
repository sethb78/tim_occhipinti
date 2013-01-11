require 'spec_helper'

describe "contributions/index" do
  before(:each) do
    assign(:contributions, [
      stub_model(Contribution,
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
      ),
      stub_model(Contribution,
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
      )
    ])
  end

  it "renders a list of contributions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Occupation".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Employer City".to_s, :count => 2
    assert_select "tr>td", :text => "Employer State".to_s, :count => 2
    assert_select "tr>td", :text => "Employer Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Card Type".to_s, :count => 2
  end
end
