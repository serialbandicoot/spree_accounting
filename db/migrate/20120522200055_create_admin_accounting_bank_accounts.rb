class CreateAdminAccountingBankAccounts < ActiveRecord::Migration
  def change
    create_table :admin_accounting_bank_accounts do |t|
      t.string :sort_code
      t.string :account_number
      t.string :account_name
      t.references :banking_institutions

      t.timestamps
    end
    add_index :admin_accounting_bank_accounts, :banking_institutions_id
  end
end
