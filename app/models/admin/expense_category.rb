class Admin::ExpenseCategory < ActiveRecord::Base
  belongs_to  :expense
end
