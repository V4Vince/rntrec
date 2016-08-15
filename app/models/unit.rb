class Unit < ActiveRecord::Base
  belongs_to :house, inverse_of: :units
  has_one :contract, inverse_of: :unit, dependent: :destroy
  has_many :expenses, as: :expenseable, inverse_of: :unit, dependent: :destroy
end
#destroy called the destroy method on the object
#delete goes directly to DB and deletes it
