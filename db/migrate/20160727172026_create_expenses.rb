class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :expense_for, null: false
      t.text :expense_description
      t.integer :expense_amount, null: false
      t.date :expense_date, null: false

      t.references :house, index: true, foreign_key: true
      t.references :unit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
