class AdminController < ApplicationController
  def index
  # if.current_user.admin?
  #   a=Category.where(name: 'Remont')

  #   @orders=Order.where(category_id: a)
  #   else
     a=Category.where(name: 'Montaj')
     @orders=Order.where(category_id: a)
  #   end
  end
end

