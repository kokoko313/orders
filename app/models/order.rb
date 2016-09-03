class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
  belongs_to :user

  validates :status, presence: true
  validates :product_id, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true


    scope :by_user, lambda { |user|
    where(:user_id => user.id) 
    #unless user.admin?
  }

end