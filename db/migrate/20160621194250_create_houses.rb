class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.text :street_name
      t.integer :num_units
      t.integer :purchase_price
      t.integer :current_price

      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
