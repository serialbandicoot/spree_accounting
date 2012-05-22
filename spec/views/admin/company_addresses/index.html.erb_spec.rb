require 'spec_helper'

describe "admin_company_addresses/index" do
  before(:each) do
    assign(:admin_company_addresses, [
      stub_model(Admin::CompanyAddress,
        :address1 => "Address1",
        :address2 => "Address2",
        :county => "County",
        :zipcode => "Zipcode",
        :admin_company_details => nil
      ),
      stub_model(Admin::CompanyAddress,
        :address1 => "Address1",
        :address2 => "Address2",
        :county => "County",
        :zipcode => "Zipcode",
        :admin_company_details => nil
      )
    ])
  end

  it "renders a list of admin_company_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
