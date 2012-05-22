require 'spec_helper'

describe "admin_suppliers/index" do
  before(:each) do
    assign(:admin_suppliers, [
      stub_model(Admin::Supplier,
        :supplier_name => "Supplier Name",
        :supplier_contact_name => "Supplier Contact Name",
        :contact_details => nil
      ),
      stub_model(Admin::Supplier,
        :supplier_name => "Supplier Name",
        :supplier_contact_name => "Supplier Contact Name",
        :contact_details => nil
      )
    ])
  end

  it "renders a list of admin_suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supplier Name".to_s, :count => 2
    assert_select "tr>td", :text => "Supplier Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
