class Admin::AccountsAddress < ActiveRecord::Base
  belongs_to :company_detail
  belongs_to :supplier
end
