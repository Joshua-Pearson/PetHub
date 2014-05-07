class AnimalsController < ApplicationController
  include AnimalsHelper
  load_and_authorize_resource 
  #   rescue_from CanCan::AccessDenied do |exception|
  #     redirect_to root_url, :alert => exception.message
  #  end

  #  before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
  #  before_filter :check_animal_owner, only: [:edit, :update, :destroy]

  def index
    @animals_today = Animal.today
    @animals_yesterday = Animal.yesterday
  end

  def show
    @animal = Animal.find(params[:id])
    unauthorized! if cannot? :show, @animal
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.new animal_params
    animal.user = current_user
    # animal.image => size: "40x40"
    binding.pry
    animal.save
    if animal.save
      flash[:notice] = "Successfully added your pet to the site"
      redirect_to(animal)
    else
      render :action => 'new'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
    unauthorized! if cannot? :update, @animal
  end

  def update
    animal = Animal.find(params[:id])
    animal.update_attributes animal_params
    redirect_to(animal)
    unauthorized! if cannot? :update, @animal
  end

  def destroy
    animal = Animal.find(params[:id])
    animal.delete
    redirect_to(animals_path)
    unauthorized! if cannot? :destroy, @animal
  end

private
  def animal_params
    params.require(:animal).permit(:name, :species, :breed, :age, :image, :description)
  end

end
