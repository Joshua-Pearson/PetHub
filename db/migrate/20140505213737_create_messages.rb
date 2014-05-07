class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :description
      t.references :animal, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
