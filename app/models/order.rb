class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
  belongs_to :user

    scope :by_user, lambda { |user|
    where(:user_id => user.id) 
    #unless user.admin?
  }

end
