require 'spec_helper'

describe "admin_suppliers/show" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Admin::Supplier,
      :supplier_name => "Supplier Name",
      :supplier_contact_name => "Supplier Contact Name",
      :contact_details => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supplier Name/)
    rendered.should match(/Supplier Contact Name/)
    rendered.should match(//)
  end
end
