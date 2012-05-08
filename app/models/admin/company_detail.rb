class Admin::CompanyDetail < ActiveRecord::Base
  #named_scope :has_active, :conditions => {:active => true}
  #
  #def validate
  #  errors.add_to_base "You can only have one active advertisement"
  #      unless self.active_flag_valid?
  #end
  #
  #def active_flag_valid?
  #  self.active == false ||
  #  Ad.has_active.size == 0 ||
  #  ( Ad.has_active.size == 1 && !self.active_changed?)
  #end

end
