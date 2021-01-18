class AddPriceToSauces < ActiveRecord::Migration[6.0]
  
  def change
    add_monetize :sauces, :price, currency: { present: false }
  end
end
