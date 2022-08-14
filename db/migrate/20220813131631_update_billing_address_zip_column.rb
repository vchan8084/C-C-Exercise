class UpdateBillingAddressZipColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :billing_addresses, :zip, :string
  end
end
