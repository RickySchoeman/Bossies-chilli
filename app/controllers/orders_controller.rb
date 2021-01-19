class OrdersController < ApplicationController

  def create
    sauce = Sauce.find(params[:sauce_id])
    order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
  end

  def update
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
     update the order
     redirect to order show
  end


  def show
    @order = Order.find(params[:id])
  end

end
