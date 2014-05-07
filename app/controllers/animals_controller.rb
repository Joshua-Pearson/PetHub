class AnimalsController < ApplicationController
  include AnimalsHelper

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
    animal = Animal.new animal_params
    animal.save!
    redirect_to(animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

private
  def animal_params
    params.require(:animal).permit(:name, :species, :breed, :age, :image)
  end

end
