class Admin::SocialMedium < ActiveRecord::Base
  has_many :social_media_types
  belongs_to :supplier

  validates :social_media_types_id, :presence => true
  validates :social_media_value, :presence => true
end
