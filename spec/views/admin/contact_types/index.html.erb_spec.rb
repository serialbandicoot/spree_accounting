require 'spec_helper'

describe "admin_contact_types/index" do
  before(:each) do
    assign(:admin_contact_types, [
      stub_model(Admin::ContactType,
        :contact_type => "Contact Type"
      ),
      stub_model(Admin::ContactType,
        :contact_type => "Contact Type"
      )
    ])
  end

  it "renders a list of admin_contact_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Type".to_s, :count => 2
  end
end
