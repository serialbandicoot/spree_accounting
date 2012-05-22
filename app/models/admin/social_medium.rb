class Admin::SocialMedium < ActiveRecord::Base
  has_many :social_media_types
  belongs_to :supplier
end
