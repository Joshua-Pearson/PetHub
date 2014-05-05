class MessagesController < ApplicationController
   before_filter :current_user, only: [:create, :new, :edit, :update, :destroy]

private
  def message_params
    params.require(:message).permit(:title, :description)
  end
end
