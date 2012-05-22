class Admin::Expense < ActiveRecord::Base
  has_one :expense_category
  has_one :expense_type
  has_one :vat

  validates :expense_categories_id, :presence => true
  validates :expense_type_id, :presence => true
  validates :vat_value_id, :presence => true
  validates :expense_total_value, :presence => true

end
