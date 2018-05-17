class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :value
      t.string :description
      t.integer :quantity
      t.string :buyer
      t.string :venue
      t.string :address

      t.timestamps
    end
  end
end
