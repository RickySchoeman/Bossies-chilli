class AddUserDetailsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :address, :string
    add_column :orders, :email, :string
    add_column :orders, :number, :string
  end
end
