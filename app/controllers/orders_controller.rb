class OrdersController < ApplicationController


  def create
    sauce = Sauce.find(params[:sauce_id])
    order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
    #order = Order.create!(order_params)
  end
  #redirect_back(fallback_location: order_path)
  

    def update
      
      @order = Order.find(params[:id])
      @order.update(order_params)
      redirect_to order_path(@order)
    end

   def edit
     @order = Order.find(params[:id])
   end



  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:name, :address, :email, :number, :sauce_id, :quantity, :order_id)
  end
end
