class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, :all
        
    can :manage, Animal do |animal|
      animal && animal.user == user
    end

    can :manage, Message do |message|
    message && message.user == user
    end
  end
end
