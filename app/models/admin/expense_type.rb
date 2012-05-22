class Admin::ExpenseType < ActiveRecord::Base
  belongs_to :expense
end
