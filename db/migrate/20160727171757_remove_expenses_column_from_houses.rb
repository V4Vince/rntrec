class RemoveExpensesColumnFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :expense, :integer
  end
end
