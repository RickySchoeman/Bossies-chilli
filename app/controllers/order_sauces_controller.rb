class OrderSaucesController < ApplicationController

  def create
    if params[:order_sauce][:order_id].blank?
      order = Order.create(state: 'pending')
      session[:order_id] = order.id
      order_sauce = OrderSauce.new(order_sauce_params)
      order_sauce.order = order
      order_sauce.save
      #flash[:alert] = "added to cart"
      #flash[:notice] = "successfully added"
    else
      OrderSauce.create(order_sauce_params)
    end
   redirect_back(fallback_location: order_sauces_path, notice: "succesfully added to cart")

  end

   def destroy
     @order_sauce = OrderSauce.find(params[:id])
     @order_sauce.destroy
     redirect_back(fallback_location: order_sauces_path, notice: "sauce deleted")
   end

  private

  def order_sauce_params
    params.require(:order_sauce).permit(:sauce_id, :quantity, :order_id)
  end
end
