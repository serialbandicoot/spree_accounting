class CreateAdminExpenseCategories < ActiveRecord::Migration
  def change
    create_table :admin_expense_categories do |t|
      t.string :expense_category

      t.timestamps
    end
  end
end
