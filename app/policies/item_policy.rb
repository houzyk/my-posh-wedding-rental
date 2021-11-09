class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.owner
  end

  def update?
    record.user == user
  end

  def show?
    true
  end

  def index?
    true
  end
end
