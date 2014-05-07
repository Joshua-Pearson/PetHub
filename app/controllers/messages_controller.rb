class MessagesController < ApplicationController
  load_and_authorize_resource
   # before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]
   # before_filter :check_message_owner, only: [:edit, :update, :destroy]
   
   def index
    @animal = Animal.find(params[:id])
    @messages = Message.all
   end

   def new
    @animal = Animal.find(params[:animal_id])
    @message = Message.new
    binding.pry
   end

   def create
    binding.pry
    animal = Animal.find(params[:animal_id])
    message = Message.new message_params
    message.title = animal.name
    message.animal = animal
    binding.pry
    message.save
    binding.pry
   end

   def show
    @animal = Animal.find[params[:animal_id]]
    @message = @animal.message
    @comment = Comment.new(:message => @message)
   end

   def edit
    @message = Message.find(params[:id])
   end

   def update
   end

   def destroy
   end

private
  def message_params
    params.require(:message).permit(:description)
  end
end
