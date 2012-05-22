require 'spec_helper'

describe "admin_expense_categories/show" do
  before(:each) do
    @expense_category = assign(:expense_category, stub_model(Admin::ExpenseCategory,
      :expense_category => "Expense Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Expense Category/)
  end
end
