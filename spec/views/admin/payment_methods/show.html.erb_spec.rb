require 'spec_helper'

describe "admin_payment_methods/show" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(Admin::AccountsPaymentMethod,
      :payment_type => "Payment Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Payment Type/)
  end
end
