require 'spec_helper'

  describe 'Animal Management' do
  let(:animal) { FactoryGirl.create(:animal) }
  let(:animal_attributes) { FactoryGirl.attributes_for(:animal) }

  before :each do
    ApplicationController.any_instance.stub(:animal).and_return(animal)
  end

  describe 'edit a animal' do

    it 'updates animal in database' do
      get "animals/#{animal.id}/edit"

      expect(response.status).to eq(200)
      expect(response).to render_template(:edit)
      expect(response.body).to include("Name", "Species", "Breed", "Image", "Age")

      put "/animals/#{animal.id}", animal: animal_attributes

      expect(response).to redirect_to(animal)
      follow_redirect!

      expect(response.body).to include("Cody", "yellow lab", "dog", "http://www.image.com", "3")
    end
  end

  describe 'create an animal' do

    it 'creates an animal in the database' do
    end
  end

  describe 'delete an animal' do
  end
end

