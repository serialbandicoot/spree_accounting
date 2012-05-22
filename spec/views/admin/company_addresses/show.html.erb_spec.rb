require 'spec_helper'

describe "admin_company_addresses/show" do
  before(:each) do
    @company_address = assign(:company_address, stub_model(Admin::CompanyAddress,
      :address1 => "Address1",
      :address2 => "Address2",
      :county => "County",
      :zipcode => "Zipcode",
      :admin_company_details => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/County/)
    rendered.should match(/Zipcode/)
    rendered.should match(//)
  end
end
