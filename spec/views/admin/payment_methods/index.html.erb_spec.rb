require 'spec_helper'

describe "admin_payment_methods/index" do
  before(:each) do
    assign(:admin_payment_methods, [
      stub_model(Admin::AccountsPaymentMethod,
        :payment_type => "Payment Type"
      ),
      stub_model(Admin::AccountsPaymentMethod,
        :payment_type => "Payment Type"
      )
    ])
  end

  it "renders a list of admin_payment_methods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Payment Type".to_s, :count => 2
  end
end
