require 'spec_helper'

describe "admin_payment_methods/new" do
  before(:each) do
    assign(:payment_method, stub_model(Admin::AccountsPaymentMethod,
      :payment_type => "MyString"
    ).as_new_record)
  end

  it "renders new payment_method form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_payment_methods_path, :method => "post" do
      assert_select "input#payment_method_payment_type", :name => "payment_method[payment_type]"
    end
  end
end
