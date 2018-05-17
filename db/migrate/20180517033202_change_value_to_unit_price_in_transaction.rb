class ChangeValueToUnitPriceInTransaction < ActiveRecord::Migration[5.2]
  def change
    change_table :transactions do |t|
      t.rename :value, :unit_price
  	end
  end
end
