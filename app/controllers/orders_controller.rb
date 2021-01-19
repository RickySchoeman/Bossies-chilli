class OrdersController < ApplicationController

  def create
<<<<<<< HEAD
  sauce = Sauce.find(params[:sauce_id])
  order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
  redirect_to order_path(order)
end

def show
  @order = Order.find(params[:id])
end
=======
    sauce = Sauce.find(params[:sauce_id])
    order  = Order.create!(sauce: sauce, amount: sauce.price, state: 'pending')
  end

  def update
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
    # update the order
    # redirect to order show
  end


  def show
    @order = Order.find(params[:id])
  end
>>>>>>> e9907f280838b5a4a4a35bbef5f1617540621854

end
