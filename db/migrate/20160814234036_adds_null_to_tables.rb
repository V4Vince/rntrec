class AddsNullToTables < ActiveRecord::Migration
  def change
    change_column :expenses, :expense_for, :text, :null => false
    change_column :expenses, :expense_amount, :integer, :null => false
    change_column :expenses, :expense_date, :integer, :null => false
  end
end
