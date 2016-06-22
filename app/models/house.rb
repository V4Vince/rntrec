class House < ActiveRecord::Base
  belongs_to :user
  has_many :units, inverse_of: :house
  has_many :contracts, through: :units
end