class CreateAdminCompanyDetails < ActiveRecord::Migration
  def change
    create_table :admin_company_details do |t|
      t.string :company_name
      t.string :company_certificate

      t.timestamps
    end
  end
end
