class Contract < ActiveRecord::Base
  belongs_to :unit, inverse_of: :contract
end
