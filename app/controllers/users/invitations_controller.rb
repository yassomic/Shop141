class Users::InvitationsController < Devise::InvitationsController


  def update
    redirect_to products_path
  end

end