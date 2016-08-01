class ChangesNullColumnInHouses < ActiveRecord::Migration
  def change
    change_column :houses, :street_name, :text, :null => false
  end
end
