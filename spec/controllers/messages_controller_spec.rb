require 'spec_helper'

  describe 'Message Management' do
  let(:message) { FactoryGirl.create(:message) }
  let(:message_attributes) { FactoryGirl.attributes_for(:message) }

  before :each do
    ApplicationController.any_instance.stub(:message).and_return(message)
  end

  describe 'edit a message' do

    it 'updates message in database' do
      get "messages/#{message.id}/edit"

      expect(response.status).to eq(200)
      expect(response).to render_template(:edit)
      expect(response.body).to include("Title", "Description")

      put "/animals/:animal_id/messages/:id", message: message_attributes

      expect(response).to redirect_to(message)
      follow_redirect!

      expect(response.body).to include("Title", "Description")
    end

  end


end
