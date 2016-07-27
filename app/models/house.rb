class House < ActiveRecord::Base
  belongs_to :user
  has_many :units, inverse_of: :house, dependent: :destroy
  has_many :contracts, through: :units
  has_many :expenses, inverse_of: :house, dependent: :destroy
end
