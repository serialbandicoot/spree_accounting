class CreateAdminPaymentMethods < ActiveRecord::Migration
  def change
    create_table :admin_payment_methods do |t|
      t.string :payment_type

      t.timestamps
    end
  end
end
