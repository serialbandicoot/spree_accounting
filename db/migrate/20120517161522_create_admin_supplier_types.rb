class CreateAdminSupplierTypes < ActiveRecord::Migration
  def change
    create_table :admin_supplier_types do |t|
      t.string :supplier_type

      t.timestamps
    end
  end
end
