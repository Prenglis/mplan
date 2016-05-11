class IntervalConstraint < ActiveRecord::Base
  belongs_to :constraint, polymorphic: true
end
