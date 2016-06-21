class UnitSerializer < ActiveModel::Serializer
  attributes :id, :unit_num, :num_bedrooms, :num_bathrooms, :num_parking, :expense, :contract
end
