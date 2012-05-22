class Admin::ContactDetail < ActiveRecord::Base
  has_many :contact_type
  belongs_to :supplier

  validates :contact_type_id, :presence => true
end
