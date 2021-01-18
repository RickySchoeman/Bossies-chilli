class OrdersController < ApplicationController

  def create
  sauce = Sauce.find(params[:sauce_id])
  order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
end

def show
  @order = current_user.orders.find(params[:id])
end

end
