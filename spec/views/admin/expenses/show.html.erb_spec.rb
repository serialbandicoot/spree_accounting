require 'spec_helper'

describe "admin_expenses/show" do
  before(:each) do
    @expense = assign(:expense, stub_model(Admin::Expense,
      :expense_categories => nil,
      :expense_type => nil,
      :expense_total_value => 1.5,
      :vat_value => nil,
      :expense_description => "Expense Description",
      :expense_receipt => "Expense Receipt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(/Expense Description/)
    rendered.should match(/Expense Receipt/)
  end
end
