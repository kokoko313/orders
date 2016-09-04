class AdminController < ApplicationController
  def index
   if current_user.role == 'shop'
     @orders=Order.where(category_id: Category.where(name: 'Montaj'))
   elsif current_user.role == 'service'
     @orders=Order.where(category_id: Category.where(name: 'Remont'))
   end
  end
end

