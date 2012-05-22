class CreateAdminExpenses < ActiveRecord::Migration
  def change
    create_table :admin_expenses do |t|
      t.references :expense_categories
      t.references :expense_type
      t.date :expense_date
      t.float :expense_total_value
      t.references :vat_value
      t.string :expense_description
      t.string :expense_receipt

      t.timestamps
    end
    add_index :admin_expenses, :expense_categories_id
    add_index :admin_expenses, :expense_type_id
    add_index :admin_expenses, :vat_value_id
  end
end
