class UsersController < ApplicationController
  load_and_authorize_resource 

  def index
    @user = current_user
    @animals = current_user.animals
  end

  def show
    @user = User.find(params[:id])
  end
end
