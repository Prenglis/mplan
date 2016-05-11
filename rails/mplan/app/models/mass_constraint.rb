class MassConstraint < ActiveRecord::Base
  belongs_to :mass
  belongs_to :constraint, polymorphic: true
end
