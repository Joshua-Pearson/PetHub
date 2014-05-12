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

  it 'should create a new instance when proper parameters are entered' do
    animal = Animal.create(name: 'Cody', species: 'dog', breed: 'yellow lab', image: "http://image.com")
    animal.should_not be_valid
    animal = Animal.create(name: 'Cody', species: 'dog', image: "http://image.com", age: '3')
    animal.should_not be_valid
    animal = Animal.create(name: 'Cody', breed: 'yellow lab', image: "http://image.com", age: '3')
    animal.should_not be_valid
    animal = Animal.create(breed: 'yellow lab', image: "http://image.com", age: '3')
    animal.should_not be_valid
    animal = Animal.create(name: 'Cody', species: 'dog', breed: 'yellow lab', image: "http://image.com", age: '3')
    animal.should be_valid
  end
end
