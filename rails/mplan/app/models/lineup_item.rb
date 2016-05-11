class LineupItem < ActiveRecord::Base
  belongs_to :acolyte
  belongs_to :position
  has_and_belongs_to_many :schedule_candidates, :join_table => "lineup_items_schedule_candidates"
end
