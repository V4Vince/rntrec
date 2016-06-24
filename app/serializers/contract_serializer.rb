class ContractSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :num_tenants, :rent, :security, :unit_id
end
