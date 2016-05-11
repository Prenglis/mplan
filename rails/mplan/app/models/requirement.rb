class Requirement < ActiveRecord::Base
  belongs_to :position
  has_and_belongs_to_many :masses, :join_table => "masses_requirements"
end
