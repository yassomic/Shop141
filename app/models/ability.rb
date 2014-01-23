class Ability
  include CanCan::Ability

  def initialize(admin_user)
    can :read, :all
  end

end
