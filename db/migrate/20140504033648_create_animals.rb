class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.string :image
      t.string :age
      t.references :user, index: true

      t.timestamps
    end
  end
end
