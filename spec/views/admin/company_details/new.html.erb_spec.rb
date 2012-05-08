require 'spec_helper'

describe "admin_company_details/new" do
  before(:each) do
    assign(:company_detail, stub_model(Admin::CompanyDetail,
      :company_name => "MyString",
      :company_certificate => ""
    ).as_new_record)
  end

  it "renders new company_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_company_details_path, :method => "post" do
      assert_select "input#company_detail_company_name", :name => "company_detail[company_name]"
      assert_select "input#company_detail_company_certificate", :name => "company_detail[company_certificate]"
    end
  end
end
