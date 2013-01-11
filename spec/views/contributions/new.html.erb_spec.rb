require 'spec_helper'

describe "contributions/new" do
  before(:each) do
    assign(:contribution, stub_model(Contribution,
      :name => "MyString",
      :address1 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :email => "MyString",
      :occupation => "MyString",
      :employer_name => "MyString",
      :employer_address1 => "MyString",
      :employer_address2 => "MyString",
      :employer_city => "MyString",
      :employer_state => "MyString",
      :employer_zip => "MyString",
      :amount => "MyString",
      :card_type => "MyString"
    ).as_new_record)
  end

  it "renders new contribution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contributions_path, :method => "post" do
      assert_select "input#contribution_name", :name => "contribution[name]"
      assert_select "input#contribution_address1", :name => "contribution[address1]"
      assert_select "input#contribution_city", :name => "contribution[city]"
      assert_select "input#contribution_state", :name => "contribution[state]"
      assert_select "input#contribution_zip", :name => "contribution[zip]"
      assert_select "input#contribution_email", :name => "contribution[email]"
      assert_select "input#contribution_occupation", :name => "contribution[occupation]"
      assert_select "input#contribution_employer_name", :name => "contribution[employer_name]"
      assert_select "input#contribution_employer_address1", :name => "contribution[employer_address1]"
      assert_select "input#contribution_employer_address2", :name => "contribution[employer_address2]"
      assert_select "input#contribution_employer_city", :name => "contribution[employer_city]"
      assert_select "input#contribution_employer_state", :name => "contribution[employer_state]"
      assert_select "input#contribution_employer_zip", :name => "contribution[employer_zip]"
      assert_select "input#contribution_amount", :name => "contribution[amount]"
      assert_select "input#contribution_card_type", :name => "contribution[card_type]"
    end
  end
end
