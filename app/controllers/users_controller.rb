class UsersController < ApplicationController
   load_and_authorize_resource 
   # before_filter :current_user, only: [:create, :new, :edit, :update, :destroy, :index]

  def index
    @user = current_user
    @animals = current_user.animals
  end

  def show
    @user = current_user
  end
end
