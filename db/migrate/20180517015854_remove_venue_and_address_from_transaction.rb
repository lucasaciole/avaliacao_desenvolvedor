class RemoveVenueAndAddressFromTransaction < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :venue, :string
    remove_column :transactions, :address, :string
  end
end
