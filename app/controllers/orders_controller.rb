class OrdersController < ApplicationController

  def create
  sauce = Sauce.find(params[:sauce_id])
  order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
  redirect_to order_path(order)
end

def show
  @order = Order.find(params[:id])
end

end
