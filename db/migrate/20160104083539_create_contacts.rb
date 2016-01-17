class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :email
      t.string :occupation
      t.string :alma_mater
      t.integer :cell_phone
      t.integer :home_phone
      t.integer :business_phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
