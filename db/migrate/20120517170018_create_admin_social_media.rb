class CreateAdminSocialMedia < ActiveRecord::Migration
  def change
    create_table :admin_social_media do |t|
      t.references :social_media_types
      t.string :social_media_value
      t.references :supplier

      t.timestamps
    end
    add_index :admin_social_media, :social_media_types_id
    add_index :admin_social_media, :supplier_id
  end
end
