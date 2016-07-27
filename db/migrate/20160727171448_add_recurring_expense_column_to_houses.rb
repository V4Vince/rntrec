class AddRecurringExpenseColumnToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :mortgage, :integer
    add_column :houses, :taxes, :integer
    add_column :houses, :insurance, :integer
  end
end
