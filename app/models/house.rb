class House < ActiveRecord::Base
  belongs_to :user
  has_many :units, inverse_of: :house
end
