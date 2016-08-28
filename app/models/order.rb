class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
  belongs_to :user
end
