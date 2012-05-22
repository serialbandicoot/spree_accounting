require 'spec_helper'

describe "admin_contact_details/index" do
  before(:each) do
    assign(:admin_contact_details, [
      stub_model(Admin::ContactDetail,
        :contact_type => nil,
        :contact_value => "Contact Value",
        :supplier => nil
      ),
      stub_model(Admin::ContactDetail,
        :contact_type => nil,
        :contact_value => "Contact Value",
        :supplier => nil
      )
    ])
  end

  it "renders a list of admin_contact_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Value".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
