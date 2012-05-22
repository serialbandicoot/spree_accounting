class Admin::Supplier < ActiveRecord::Base
  has_many :contact_detail, :dependent => :destroy
  has_many :social_mediums, :dependent => :destroy
  has_many :accounts_addresses, :dependent => :destroy
  has_one :supplier_type
  has_one :accounts_payment_method

  validates :supplier_name, :presence => true
  validates :supplier_type_id, :presence => true
  validates :accounts_payment_method_id, :presence => true
end
