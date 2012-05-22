class Admin::Supplier < ActiveRecord::Base
  has_many :contact_detail
  has_many :social_mediums
  has_many :company_addresses
  has_one :supplier_type
  has_one :accounts_payment_method
end
