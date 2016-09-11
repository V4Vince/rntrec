class ContractSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :num_tenants, :rent, :security

  # belongs_to :unit
end
