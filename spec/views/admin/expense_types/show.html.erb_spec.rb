require 'spec_helper'

describe "admin_expense_types/show" do
  before(:each) do
    @expense_type = assign(:expense_type, stub_model(Admin::ExpenseType,
      :expense_type => "Expense Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Expense Type/)
  end
end
