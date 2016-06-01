class Constraint < ActiveRecord::Base
    def self.new_constraint(constraint_type, interval, mass, weekday)
        case type
        when 'interval'
            IntervalConstraint.new_constraint interval
        when 'mass'
            MassConstraint.new_constraint mass
        when 'weekday'
            WeekdayConstraint.new_constraint weekday
        end
    end
end

require 'interval_constraint'
require 'weekday_constraint'
require 'mass_constraint'