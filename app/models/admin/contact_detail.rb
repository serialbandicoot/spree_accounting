class Admin::ContactDetail < ActiveRecord::Base
  has_many :contact_type
  belongs_to :supplier
end
