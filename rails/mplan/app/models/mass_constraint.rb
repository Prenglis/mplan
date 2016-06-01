class MassConstraint < Constraint
  belongs_to :mass
  belongs_to :constraint, polymorphic: true
  set_table_name 'mass_constraints'
  def self.new_constraint(mass)
      self.class.new mass[:id]
  end
end
