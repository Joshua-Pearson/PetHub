class AnimalsController < ApplicationController
  load_and_authorize_resource 

  def index
    @animals_today = Animal.today.my_order
    @animals_yesterday = Animal.yesterday.my_order
    @animals_this_week = Animal.this_week.my_order
    @animals = Animal.all.order('created_at DESC')
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new(key: params[:key])
  end

  def create
    animal = Animal.new animal_params
    animal.user = current_user
    animal.save
    if animal.save
      flash[:notice] = "Successfully added your pet to the site"
      redirect_to(animal)
    else
      render :action => 'new'
    end
  end

  def edit
    animal = Animal.find(params[:id])
    authorize! :edit, @animal
  end

  def update
    animal = Animal.find(params[:id])
    animal.update_attributes animal_params
    authorize! :update, @animal
    redirect_to(animal)  
  end

  def destroy
    animal = Animal.find(params[:id])
    authorize! :edit, @animal
    animal.delete
    redirect_to(animals_path)
  end

  private
    def animal_params
      params.require(:animal).permit(:name, :species, :breed, :age, :image, :description)
    end
end
