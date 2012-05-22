require 'spec_helper'

describe "admin_contact_types/edit" do
  before(:each) do
    @contact_type = assign(:contact_type, stub_model(Admin::ContactType,
      :contact_type => "MyString"
    ))
  end

  it "renders the edit contact_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_contact_types_path(@contact_type), :method => "post" do
      assert_select "input#contact_type_contact_type", :name => "contact_type[contact_type]"
    end
  end
end
