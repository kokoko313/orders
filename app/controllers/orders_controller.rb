class OrdersController < ApplicationController
  def new
    @order=Order.new
  end

  def create
    @order=Order.new(order_params)
      if @order.valid? 
        @order.save
      else
        render action: 'new'
      end    
  end

  def order_params
      params.require(:order).permit(:status, :product_id, :category_id, :user_id)
  end 
end
