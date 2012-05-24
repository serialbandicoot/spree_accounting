class Admin::BankingInstitution < ActiveRecord::Base
  belongs_to :accounting_bank_account
end
