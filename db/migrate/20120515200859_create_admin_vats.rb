class CreateAdminVats < ActiveRecord::Migration
  def change
    create_table :admin_vats do |t|
      t.string :vat_name
      t.integer :vat_value

      t.timestamps
    end
  end
end
