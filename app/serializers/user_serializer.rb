#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email,

  has_many :houses
  has_many :units
end
