class Admin::AccountingBankAccount < ActiveRecord::Base
  has_one :banking_institution
  has_many :bank_transactions, :dependent => :destroy

  validates :banking_institutions_id, :presence => true
end
