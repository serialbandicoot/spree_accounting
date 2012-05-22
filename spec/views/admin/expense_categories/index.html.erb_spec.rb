require 'spec_helper'

describe "admin_expense_categories/index" do
  before(:each) do
    assign(:admin_expense_categories, [
      stub_model(Admin::ExpenseCategory,
        :expense_category => "Expense Category"
      ),
      stub_model(Admin::ExpenseCategory,
        :expense_category => "Expense Category"
      )
    ])
  end

  it "renders a list of admin_expense_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Expense Category".to_s, :count => 2
  end
end
