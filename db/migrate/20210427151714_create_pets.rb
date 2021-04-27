class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :address
      t.string :species
      t.datetime :date

      t.timestamps
    end
  end
end
