class Order < ApplicationRecord
  monetize :amount_cents
  has_many :order_sauces
  has_many :sauces, through: :order_sauce

  validates :name, presence: true, on: :update
  validates :address, presence: true, on: :update
  validates :email, presence: true, on: :update
  validates :number, presence: true, on: :update

  def total_price
    price = 0
    order_sauces.each do |os|
      price += os.sauce.price * os.quantity
    end
    price
  end
end
