class Expense < ActiveRecord::Base
  belongs_to :expensesable, polymorphic: true
  belongs_to :house
  belongs_to :unit
end
