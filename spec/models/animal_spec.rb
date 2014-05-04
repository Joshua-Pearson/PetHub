require 'spec_helper'

describe Animal do
  it 'should respond to all attributes' do
    animal = Animal.create(name: 'Cody', species: 'dog', breed: 'yellow lab', image: "http://image.com", age: '3')
    animal.should respond_to(:name)
    animal.should respond_to(:species)
    animal.should respond_to(:breed)
    animal.should respond_to(:image)
    animal.should respond_to(:age)
  end
end
