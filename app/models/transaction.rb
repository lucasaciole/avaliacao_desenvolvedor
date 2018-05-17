class Transaction < ApplicationRecord
  belongs_to :provider

  def total_price
    self.quantity * self.unit_price
  end

end
