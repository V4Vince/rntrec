class HouseSerializer < ActiveModel::Serializer
  attributes :id, :street_name, :num_units, :purchase_price, :current_price, :user, :units, :contracts
end
