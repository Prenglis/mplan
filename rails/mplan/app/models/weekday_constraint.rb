class WeekdayConstraint < Constraint
  belongs_to :constraint, polymorphic: true
  set_table_name 'weekday_constraints'
  def self.new_constraint(weekday)
      self.class.new weekday[:id]
  end
end
