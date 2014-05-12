require 'spec_helper'

describe Message do

  it 'should create a new message when valid parameters are entered' do
    message = FactoryGirl.build(:message)
    message.should be_valid
    message = Message.create(title: "title")
    message.should_not be_valid
    message = Message.create(description: "description")
    message.should_not be_valid
  end

  
end
