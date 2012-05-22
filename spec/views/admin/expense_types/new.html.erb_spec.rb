require 'spec_helper'

describe "admin_expense_types/new" do
  before(:each) do
    assign(:expense_type, stub_model(Admin::ExpenseType,
      :expense_type => "MyString"
    ).as_new_record)
  end

  it "renders new expense_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_expense_types_path, :method => "post" do
      assert_select "input#expense_type_expense_type", :name => "expense_type[expense_type]"
    end
  end
end
