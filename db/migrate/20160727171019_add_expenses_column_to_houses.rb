class AddExpensesColumnToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :expense, :integer
  end
end
