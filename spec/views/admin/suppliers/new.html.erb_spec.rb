require 'spec_helper'

describe "admin_suppliers/new" do
  before(:each) do
    assign(:supplier, stub_model(Admin::Supplier,
      :supplier_name => "MyString",
      :supplier_contact_name => "MyString",
      :contact_details => nil
    ).as_new_record)
  end

  it "renders new supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_suppliers_path, :method => "post" do
      assert_select "input#supplier_supplier_name", :name => "supplier[supplier_name]"
      assert_select "input#supplier_supplier_contact_name", :name => "supplier[supplier_contact_name]"
      assert_select "input#supplier_contact_details", :name => "supplier[contact_details]"
    end
  end
end
