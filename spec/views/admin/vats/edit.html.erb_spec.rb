require 'spec_helper'

describe "admin_vats/edit" do
  before(:each) do
    @vat = assign(:vat, stub_model(Admin::Vat,
      :vat_name => "MyString",
      :vat_value => 1
    ))
  end

  it "renders the edit vat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_vats_path(@vat), :method => "post" do
      assert_select "input#vat_vat_name", :name => "vat[vat_name]"
      assert_select "input#vat_vat_value", :name => "vat[vat_value]"
    end
  end
end
