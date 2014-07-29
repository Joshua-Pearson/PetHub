class SessionsController < ApplicationController
  
  def show
    @uploader = Animal.new.image
    @uploader.success_action_redirect = new_animal_path
    @user = current_user
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
