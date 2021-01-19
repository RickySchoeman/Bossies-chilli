class OrderSaucesController < ApplicationController

  def create
    if params[:order_sauce][:order_id]
      order_sauce = OrderSauce.create(order_sauce_params)
    else
      order = Order.create(state: 'pending')
      session[:order_id] = order.id
      order_sauce = OrderSauce.new(order_sauce_params)
      order_sauce.order = order
      order_sauce.save
    end
    redirect_to sauces_path
  end

  def order_sauce_params
    params.require(:order_sauce).permit(:sauce_id, :quantity, :order_id)
  end
end
