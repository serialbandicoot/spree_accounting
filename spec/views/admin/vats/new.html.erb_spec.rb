require 'spec_helper'

describe "admin_vats/new" do
  before(:each) do
    assign(:vat, stub_model(Admin::Vat,
      :vat_name => "MyString",
      :vat_value => 1
    ).as_new_record)
  end

  it "renders new vat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_vats_path, :method => "post" do
      assert_select "input#vat_vat_name", :name => "vat[vat_name]"
      assert_select "input#vat_vat_value", :name => "vat[vat_value]"
    end
  end
end
