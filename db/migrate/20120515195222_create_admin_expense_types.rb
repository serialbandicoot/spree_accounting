class CreateAdminExpenseTypes < ActiveRecord::Migration
  def change
    create_table :admin_expense_types do |t|
      t.string :expense_type

      t.timestamps
    end
  end
end
