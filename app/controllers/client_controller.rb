class ClientController < ApplicationController
  before_filter :authenticate_user!, :only => [:index]
  
  def index
    @orders = Order.by_user(current_user).all
  end
end
