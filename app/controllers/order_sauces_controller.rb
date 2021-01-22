class OrderSaucesController < ApplicationController

  def create
    if params[:order_sauce][:order_id].blank?
      order = Order.create(state: 'pending')
      session[:order_id] = order.id
      order_sauce = OrderSauce.new(order_sauce_params)
      order_sauce.order = order
      order_sauce.save
    else
      OrderSauce.create(order_sauce_params)
    end
    redirect_to sauces_path
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_sauce_params)
    redirect_to order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def order_sauce_params
    params.require(:order_sauce).permit(:sauce_id, :quantity, :order_id)
  end
end
