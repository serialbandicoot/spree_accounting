class CreateAdminContactTypes < ActiveRecord::Migration
  def change
    create_table :admin_contact_types do |t|
      t.string :contact_type

      t.timestamps
    end
  end
end
