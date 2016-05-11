class Constraint < ActiveRecord::Base
    has_and_belongs_to_many :acolytes, :join_table => "acolytes_constraints"
end
