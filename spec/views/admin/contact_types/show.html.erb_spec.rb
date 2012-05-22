require 'spec_helper'

describe "admin_contact_types/show" do
  before(:each) do
    @contact_type = assign(:contact_type, stub_model(Admin::ContactType,
      :contact_type => "Contact Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Type/)
  end
end
