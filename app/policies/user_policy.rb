class UserPolicy < ApplicationPolicy

  def show?
    true
  end

  def all?
    true
  end


  def update?
    record == user
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
