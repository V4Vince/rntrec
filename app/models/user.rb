#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :houses, dependent: :destroy
  has_many :units, through: :houses
  has_many :contracts, through: :units
  has_many :expenses, through: :units
  has_many :expenses, through: :houses
end
