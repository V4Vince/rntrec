class AddsExpenseDateColumn < ActiveRecord::Migration
  def change
    add_column :expenses, :expense_date, :date, :null => false
  end
end
