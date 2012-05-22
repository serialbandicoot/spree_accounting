require 'spec_helper'

describe "admin_expenses/index" do
  before(:each) do
    assign(:admin_expenses, [
      stub_model(Admin::Expense,
        :expense_categories => nil,
        :expense_type => nil,
        :expense_total_value => 1.5,
        :vat_value => nil,
        :expense_description => "Expense Description",
        :expense_receipt => "Expense Receipt"
      ),
      stub_model(Admin::Expense,
        :expense_categories => nil,
        :expense_type => nil,
        :expense_total_value => 1.5,
        :vat_value => nil,
        :expense_description => "Expense Description",
        :expense_receipt => "Expense Receipt"
      )
    ])
  end

  it "renders a list of admin_expenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Expense Description".to_s, :count => 2
    assert_select "tr>td", :text => "Expense Receipt".to_s, :count => 2
  end
end
