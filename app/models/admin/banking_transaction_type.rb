class Admin::BankingTransactionType < ActiveRecord::Base
  belongs_to  :bank_transaction
end
