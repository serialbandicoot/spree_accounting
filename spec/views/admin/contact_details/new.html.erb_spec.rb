require 'spec_helper'

describe "admin_contact_details/new" do
  before(:each) do
    assign(:contact_detail, stub_model(Admin::ContactDetail,
      :contact_type => nil,
      :contact_value => "MyString",
      :supplier => nil
    ).as_new_record)
  end

  it "renders new contact_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_contact_details_path, :method => "post" do
      assert_select "input#contact_detail_contact_type", :name => "contact_detail[contact_type]"
      assert_select "input#contact_detail_contact_value", :name => "contact_detail[contact_value]"
      assert_select "input#contact_detail_supplier", :name => "contact_detail[supplier]"
    end
  end
end
