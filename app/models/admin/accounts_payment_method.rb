class Admin::AccountsPaymentMethod < ActiveRecord::Base
  belongs_to  :supplier
end
