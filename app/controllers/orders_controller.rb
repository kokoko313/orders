class OrdersController < ApplicationController
  before_filter :authenticate_user!
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

  def update
    set_order
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to passthrough_index_path, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    set_order
  end

  def edit
    set_order
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

   def order_params
      params.require(:order).permit(:status, :product_id, :category_id, :user_id)
  end 

end
