require 'spec_helper'

describe "admin_expense_categories/new" do
  before(:each) do
    assign(:expense_category, stub_model(Admin::ExpenseCategory,
      :expense_category => "MyString"
    ).as_new_record)
  end

  it "renders new expense_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_expense_categories_path, :method => "post" do
      assert_select "input#expense_category_expense_category", :name => "expense_category[expense_category]"
    end
  end
end
