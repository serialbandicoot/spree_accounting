class Admin::BankTransaction < ActiveRecord::Base
  belongs_to :accounting_bank_account
  has_many  :banking_transaction_types
end
