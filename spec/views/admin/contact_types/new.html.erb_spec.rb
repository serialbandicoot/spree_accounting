require 'spec_helper'

describe "admin_contact_types/new" do
  before(:each) do
    assign(:contact_type, stub_model(Admin::ContactType,
      :contact_type => "MyString"
    ).as_new_record)
  end

  it "renders new contact_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_contact_types_path, :method => "post" do
      assert_select "input#contact_type_contact_type", :name => "contact_type[contact_type]"
    end
  end
end
