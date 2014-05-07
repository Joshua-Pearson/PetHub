class MessagesController < ApplicationController
  load_and_authorize_resource
   # before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
   # before_filter :check_message_owner, only: [:edit, :update, :destroy]

   before_action :load_animal, only: [:index, :new, :create, :show, :edit]

   def index
    @messages = @animal.messages
    @message = @animal.messages.build
   end

   def create
    @message = @animal.messages.build message_params
    @message.title = @animal.name
    @message.animal = @animal
    @message.save!
    redirect_to animal_messages_path(@animal)
   end

   def show
    @message = @animal.message
   end

private
  def message_params
    params.require(:message).permit(:description)
  end

  def load_animal
    @animal = Animal.find(params[:animal_id])
  end

end
