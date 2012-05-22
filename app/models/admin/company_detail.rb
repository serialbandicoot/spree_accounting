class Admin::CompanyDetail < ActiveRecord::Base
  has_many :accounts_addresses, :dependent => :destroy
end
