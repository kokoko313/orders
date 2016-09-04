class PassthroughController < ApplicationController
  before_filter :authenticate_user!, :only => [:index]
  def index
   path = case current_user.role
      when 'shop'
        admin_index_path
      when 'user'
        client_index_path
      when 'service'
        admin_index_path
      else
        client_index_path
    end

    redirect_to path     
  end
end
