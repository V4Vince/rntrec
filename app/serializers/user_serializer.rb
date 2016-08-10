#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :houses, :units
end
