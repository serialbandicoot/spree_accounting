class CreateAdminMileages < ActiveRecord::Migration
  def change
    create_table :admin_mileages do |t|
      t.date :date_recorded
      t.integer :mileage
      t.string :travel_description
      t.references :vehicle_type
      t.references :reclaim_rate

      t.timestamps
    end
    add_index :admin_mileages, :vehicle_type_id
    add_index :admin_mileages, :reclaim_rate_id
  end
end
