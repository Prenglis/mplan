class IntervalConstraint < Constraint
  belongs_to :constraint, polymorphic: true
  set_table_name 'interval_constraints'
  def self.new_constraint(interval)
      self.class.new interval[:from], interval[:to]
  end

end
