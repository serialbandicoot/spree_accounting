class CreateAdminSocialMediaTypes < ActiveRecord::Migration
  def change
    create_table :admin_social_media_types do |t|
      t.string :social_media_type

      t.timestamps
    end
  end
end
