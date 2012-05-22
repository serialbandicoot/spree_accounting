require 'spec_helper'

describe "admin_payment_methods/edit" do
  before(:each) do
    @payment_method = assign(:payment_method, stub_model(Admin::AccountsPaymentMethod,
      :payment_type => "MyString"
    ))
  end

  it "renders the edit payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_payment_methods_path(@payment_method), :method => "post" do
      assert_select "input#payment_method_payment_type", :name => "payment_method[payment_type]"
    end
  end
end
