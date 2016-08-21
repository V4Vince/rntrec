class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :expense_for, :expense_description, :expense_amount, :expense_date

end
