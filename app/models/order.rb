class Order < ApplicationRecord
  monetize :amount_cents
  has_many :order_sauces
  has_many :sauces, through: :order_sauces


  def total_price
    price = 0
    order_sauces.each do |os|
      price += os.sauce.price * os.quantity
    end
    price
  end
end
