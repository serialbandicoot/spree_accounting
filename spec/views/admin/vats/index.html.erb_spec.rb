require 'spec_helper'

describe "admin_vats/index" do
  before(:each) do
    assign(:admin_vats, [
      stub_model(Admin::Vat,
        :vat_name => "Vat Name",
        :vat_value => 1
      ),
      stub_model(Admin::Vat,
        :vat_name => "Vat Name",
        :vat_value => 1
      )
    ])
  end

  it "renders a list of admin_vats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vat Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
