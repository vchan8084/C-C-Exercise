class CreateBillingAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :billing_addresses do |t|
      t.string :name
      t.string :email_address
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
