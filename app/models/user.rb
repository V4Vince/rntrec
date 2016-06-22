#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :houses
  has_many :units, through: :houses
  has_many :contracts, through: :units
end
