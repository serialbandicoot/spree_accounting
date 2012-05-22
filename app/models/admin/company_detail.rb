class Admin::CompanyDetail < ActiveRecord::Base
  has_many :company_addresses, :dependent => :destroy
end
