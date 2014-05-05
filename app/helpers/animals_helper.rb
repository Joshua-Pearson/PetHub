module AnimalsHelper
  def check_animal_owner
    animal = current_user.animals.where(:id => params[:id]).first
    if animal.nil?
      flash[:error] = "That's not your animal."
      redirect_to animal_path(params[:id])
    end
  end
end
