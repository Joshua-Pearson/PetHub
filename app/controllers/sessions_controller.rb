require 'pry'

class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    binding.pry
    redirect_to root_url
    binding.pry
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
