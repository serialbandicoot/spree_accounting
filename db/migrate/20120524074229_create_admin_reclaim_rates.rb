class CreateAdminReclaimRates < ActiveRecord::Migration
  def change
    create_table :admin_reclaim_rates do |t|
      t.string :reclaim_rate

      t.timestamps
    end
  end
end
