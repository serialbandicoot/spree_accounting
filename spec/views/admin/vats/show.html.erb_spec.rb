require 'spec_helper'

describe "admin_vats/show" do
  before(:each) do
    @vat = assign(:vat, stub_model(Admin::Vat,
      :vat_name => "Vat Name",
      :vat_value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vat Name/)
    rendered.should match(/1/)
  end
end
