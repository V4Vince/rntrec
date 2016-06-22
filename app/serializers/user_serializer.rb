#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :houses, :units, :contracts
end
