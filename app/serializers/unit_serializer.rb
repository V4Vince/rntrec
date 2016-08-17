class UnitSerializer < ActiveModel::Serializer
  attributes :id, :unit_num, :num_bedrooms, :num_bathrooms, :num_parking
  
  has_many :expenses
  has_one :contract
  #serializing house will cause ember to throw an error after creating a unit.
  # :house
end
