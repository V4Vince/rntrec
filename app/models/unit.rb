class Unit < ActiveRecord::Base
  belongs_to :house, inverse_of: :units
  has_one :contract, inverse_of: :unit, dependent: :destroy
  has_many :expenses, inverse_of: :unit, dependent: :destroy
end
