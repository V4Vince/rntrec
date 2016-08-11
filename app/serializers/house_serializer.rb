class HouseSerializer < ActiveModel::Serializer
  attributes :id, :street_name, :num_units, :purchase_price, :current_price, :mortgage, :taxes, :insurance, :user, :units, :contracts, :expenses
end
