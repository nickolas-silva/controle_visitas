# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_a?(Admin)
      can :manage, :all
    elsif user.is_a?(Employee)
      can :manage, Visit
    elsif user.is_a?(Attendant)
      can :manage, [Visit, Visitor]
    end
  end
end
