class WelcomeController < ApplicationController
  def index
    messages = Message.all
    @message = messages.my_random if messages != nil
  end
end
