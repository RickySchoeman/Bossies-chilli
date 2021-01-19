class OrderSauce < ApplicationRecord
  belongs_to :sauce
  belongs_to :order
end
