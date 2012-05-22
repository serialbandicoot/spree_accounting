require 'spec_helper'

describe "admin_expenses/new" do
  before(:each) do
    assign(:expense, stub_model(Admin::Expense,
      :expense_categories => nil,
      :expense_type => nil,
      :expense_total_value => 1.5,
      :vat_value => nil,
      :expense_description => "MyString",
      :expense_receipt => "MyString"
    ).as_new_record)
  end

  it "renders new expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_expenses_path, :method => "post" do
      assert_select "input#expense_expense_categories", :name => "expense[expense_categories]"
      assert_select "input#expense_expense_type", :name => "expense[expense_type]"
      assert_select "input#expense_expense_total_value", :name => "expense[expense_total_value]"
      assert_select "input#expense_vat_value", :name => "expense[vat_value]"
      assert_select "input#expense_expense_description", :name => "expense[expense_description]"
      assert_select "input#expense_expense_receipt", :name => "expense[expense_receipt]"
    end
  end
end
