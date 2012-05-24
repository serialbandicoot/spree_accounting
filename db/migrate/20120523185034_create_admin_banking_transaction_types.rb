class CreateAdminBankingTransactionTypes < ActiveRecord::Migration
  def change
    create_table :admin_banking_transaction_types do |t|
      t.string :banking_transaction_type

      t.timestamps
    end
  end
end
