class CreateOrderSauces < ActiveRecord::Migration[6.0]
  def change
    create_table :order_sauces do |t|
      t.references :sauce
      t.references :order
      t.integer :quantity

      t.timestamps
    end
  end
end
