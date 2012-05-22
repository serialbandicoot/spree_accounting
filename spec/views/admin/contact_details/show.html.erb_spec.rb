require 'spec_helper'

describe "admin_contact_details/show" do
  before(:each) do
    @contact_detail = assign(:contact_detail, stub_model(Admin::ContactDetail,
      :contact_type => nil,
      :contact_value => "Contact Value",
      :supplier => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Contact Value/)
    rendered.should match(//)
  end
end
