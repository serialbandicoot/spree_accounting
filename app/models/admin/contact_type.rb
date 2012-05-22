class Admin::ContactType < ActiveRecord::Base
  belongs_to  :contact_details
end
