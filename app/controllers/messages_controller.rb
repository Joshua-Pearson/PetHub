class MessagesController < ApplicationController
  load_and_authorize_resource

   before_action :load_animal, only: [:index, :new, :create, :show, :edit]

   def index
    @messages = @animal.messages
   end

   def new
    @message = @animal.messages.build
   end

   def create
    @message = @animal.messages.build message_params
    @message.animal = @animal
    @message.user = current_user
    @message.save!
    redirect_to animal_messages_path(@animal)
   end

   def show
    @message = @animal.message
   end

private
  def message_params
    params.require(:message).permit(:description, :title)
  end

  def load_animal
    @animal = Animal.find(params[:animal_id])
  end

end
