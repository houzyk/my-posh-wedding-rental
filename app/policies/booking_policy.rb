class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    !user.owner
  end

  def index?
    !user.owner
  end

  def destroy?
    !user.owner
  end

  def update?
    !user.owner
  end
end
