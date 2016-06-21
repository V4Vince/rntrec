class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.text :unit_num
      t.integer :num_bedrooms
      t.integer :num_bathrooms
      t.integer :num_parking
      t.integer :expense

      t.references :house, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
