class RemovesExpenseDateColumn < ActiveRecord::Migration
  def change
    remove_column :expenses, :expense_date, :integer
  end
end
