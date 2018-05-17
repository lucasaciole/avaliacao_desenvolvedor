class AddProviderIdToTransaction < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :provider, foreign_key: true
  end
end
