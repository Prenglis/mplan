class Acolyte < ActiveRecord::Base
  belongs_to :church
  has_and_belongs_to_many :constraints, :join_table => "acolytes_constraints"
end
