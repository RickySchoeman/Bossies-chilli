class OrdersController < ApplicationController

  def create
    sauce = Sauce.find(params[:sauce_id])
    order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path
  end

  def edit
    @order = Order.find(params[:id])
  end
  #!!!!!update the order
     #!!!!redirect to order show


  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:sauce_id, :quantity, :order_id)
  end
end
