class Expense < ActiveRecord::Base
  belongs_to :house, inverse_of: :expenses
  belongs_to :unit, inverse_of: :expenses
end
