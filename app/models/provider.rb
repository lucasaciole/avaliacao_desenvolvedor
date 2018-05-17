class Provider < ApplicationRecord
  has_many :transactions, :dependent => :destroy
end
