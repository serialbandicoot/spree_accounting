class CreateAdminBankingInstitutions < ActiveRecord::Migration
  def change
    create_table :admin_banking_institutions do |t|
      t.string :institution_name

      t.timestamps
    end
  end
end
