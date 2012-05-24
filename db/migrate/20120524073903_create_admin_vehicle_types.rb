class CreateAdminVehicleTypes < ActiveRecord::Migration
  def change
    create_table :admin_vehicle_types do |t|
      t.string :vehicle_type

      t.timestamps
    end
  end
end
