class RequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def validate?
    # true
    # record.event.user == user
  end
  
  def create?
    true
  end

  def index?
    true
  end
end
