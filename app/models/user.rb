class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders

  def make_shop!
    self.update(role: 'shop')
  end

  def make_service!
    self.update(role: 'service')
  end

  def make_user!
    self.update(role: 'user')
  end

end
