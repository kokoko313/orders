class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
  def create?
    user && user.role == 'service' || user.role == 'shop'
  end
end
