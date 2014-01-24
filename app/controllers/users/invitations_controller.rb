class Users::InvitationsController < Devise::InvitationsController




  def after_accept_path_for(resource)
    new_user_charity_path(resource)
  end

end