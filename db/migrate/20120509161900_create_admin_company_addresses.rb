class CreateAdminCompanyAddresses < ActiveRecord::Migration
  def change
    create_table :admin_company_addresses do |t|
      t.string :address1
      t.string :address2
      t.string :county
      t.string :zipcode
      t.references :company_detail
      t.references :supplier

      t.timestamps
    end
    add_index :admin_company_addresses, :company_detail_id
    add_index :admin_company_addresses, :supplier_id
  end
end

