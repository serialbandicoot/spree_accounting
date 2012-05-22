require 'spec_helper'

describe "admin_expense_types/edit" do
  before(:each) do
    @expense_type = assign(:expense_type, stub_model(Admin::ExpenseType,
      :expense_type => "MyString"
    ))
  end

  it "renders the edit expense_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_expense_types_path(@expense_type), :method => "post" do
      assert_select "input#expense_type_expense_type", :name => "expense_type[expense_type]"
    end
  end
end
