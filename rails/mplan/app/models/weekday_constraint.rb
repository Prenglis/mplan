class WeekdayConstraint < ActiveRecord::Base
  belongs_to :constraint, polymorphic: true
end
