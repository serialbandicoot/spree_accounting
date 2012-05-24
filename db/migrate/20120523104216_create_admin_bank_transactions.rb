class CreateAdminBankTransactions < ActiveRecord::Migration
  def change
    create_table :admin_bank_transactions do |t|
      t.references :accounting_bank_account
      t.date :transaction_date
      t.references :banking_transaction_type
      t.string :transaction_description
      t.float :transaction_amount

      t.timestamps
    end
    add_index :admin_bank_transactions, :accounting_bank_account_id
    add_index :admin_bank_transactions, :banking_transaction_type_id
  end
end
