class Admin::Mileage < ActiveRecord::Base
  has_many :vehicle_types
  has_many :reclaim_rates
end
