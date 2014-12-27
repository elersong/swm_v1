class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.integer :contacts
      t.string :city
      t.string :state
      t.integer :zip
      t.string :website
      t.integer :prev_orders
      t.integer :referrals

      t.timestamps
    end
  end
end
