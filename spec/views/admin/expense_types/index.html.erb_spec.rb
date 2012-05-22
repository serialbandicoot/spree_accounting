require 'spec_helper'

describe "admin_expense_types/index" do
  before(:each) do
    assign(:admin_expense_types, [
      stub_model(Admin::ExpenseType,
        :expense_type => "Expense Type"
      ),
      stub_model(Admin::ExpenseType,
        :expense_type => "Expense Type"
      )
    ])
  end

  it "renders a list of admin_expense_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Expense Type".to_s, :count => 2
  end
end
