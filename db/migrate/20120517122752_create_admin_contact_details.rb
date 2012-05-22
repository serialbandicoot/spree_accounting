class CreateAdminContactDetails < ActiveRecord::Migration
  def change
    create_table :admin_contact_details do |t|
      t.references :contact_type
      t.string :contact_value
      t.references :supplier

      t.timestamps
    end
    add_index :admin_contact_details, :contact_type_id
    add_index :admin_contact_details, :supplier_id
  end
end
