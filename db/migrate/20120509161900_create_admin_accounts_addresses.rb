class CreateAdminAccountsAddresses < ActiveRecord::Migration
  def change
    create_table :admin_accounts_addresses do |t|
      t.string :address1
      t.string :address2
      t.string :county
      t.string :zipcode
      t.references :company_detail
      t.integer :supplier_id

      t.timestamps
    end
    add_index :admin_accounts_addresses, :company_detail_id
  end
end

