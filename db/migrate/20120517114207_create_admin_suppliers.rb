class CreateAdminSuppliers < ActiveRecord::Migration
  def change
    create_table :admin_suppliers do |t|
      t.string :supplier_name
      t.string :supplier_contact_name
      t.references :accounts_payment_method
      t.references :supplier_type

      t.timestamps
    end
    add_index :admin_suppliers, :accounts_payment_method_id
    add_index :admin_suppliers, :supplier_type_id
  end
end
