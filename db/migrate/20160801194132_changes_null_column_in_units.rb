class ChangesNullColumnInUnits < ActiveRecord::Migration
  def change
    change_column :units, :unit_num, :text, :null => false
  end
end
