require 'spec_helper'

describe "admin_company_addresses/new" do
  before(:each) do
    assign(:company_address, stub_model(Admin::CompanyAddress,
      :address1 => "MyString",
      :address2 => "MyString",
      :county => "MyString",
      :zipcode => "MyString",
      :admin_company_details => nil
    ).as_new_record)
  end

  it "renders new company_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_company_addresses_path, :method => "post" do
      assert_select "input#company_address_address1", :name => "company_address[address1]"
      assert_select "input#company_address_address2", :name => "company_address[address2]"
      assert_select "input#company_address_county", :name => "company_address[county]"
      assert_select "input#company_address_zipcode", :name => "company_address[zipcode]"
      assert_select "input#company_address_admin_company_details", :name => "company_address[admin_company_details]"
    end
  end
end
