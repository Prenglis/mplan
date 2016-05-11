class Mass < ActiveRecord::Base
  belongs_to :church
  has_and_belongs_to_many :requirements, :join_table => "masses_requirements"
end
