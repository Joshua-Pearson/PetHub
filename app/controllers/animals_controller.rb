class AnimalsController < ApplicationController
  before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
  before_filter :check_animal_owner, only: [:edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.create animal_params
    redirect_to(animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

private
  def animal_params
    params.require(:animal).permit(:name, :species, :breed, :image, :age)
  end

end
