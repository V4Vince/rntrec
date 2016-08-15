class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :expense_for
      t.text :expense_description
      t.integer :expense_amount
      t.integer :expense_date
      t.references :expenseable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
