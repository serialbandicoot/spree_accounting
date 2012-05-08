require 'spec_helper'

describe "admin_company_details/show" do
  before(:each) do
    @company_detail = assign(:company_detail, stub_model(Admin::CompanyDetail,
      :company_name => "Company Name",
      :company_certificate => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(//)
  end
end
