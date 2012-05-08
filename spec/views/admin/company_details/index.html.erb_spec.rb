require 'spec_helper'

describe "admin_company_details/index" do
  before(:each) do
    assign(:admin_company_details, [
      stub_model(Admin::CompanyDetail,
        :company_name => "Company Name",
        :company_certificate => ""
      ),
      stub_model(Admin::CompanyDetail,
        :company_name => "Company Name",
        :company_certificate => ""
      )
    ])
  end

  it "renders a list of admin_company_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
