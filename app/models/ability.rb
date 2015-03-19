class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.is_admin?
        can :manage, Product
        can :manage, Category
        can :manage, Review
      else
        can :create, Review
      end
    end
  end
end