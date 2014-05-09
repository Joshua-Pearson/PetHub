class WelcomeController < ApplicationController
  def index
    @messages = Message.all
    @message = messages.my_random
  end
end
