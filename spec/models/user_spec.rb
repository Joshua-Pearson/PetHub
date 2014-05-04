require 'spec_helper'

describe User do
  it 'should respond to name and email' do
    user = User.create(name: 'Josh Pearson', email: 'josh@josh.com')
    user.should respond_to(:name)
    user.should respond_to(:email)
end
  end
