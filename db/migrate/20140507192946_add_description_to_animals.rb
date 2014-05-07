class AddDescriptionToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :description, :string
  end
end
