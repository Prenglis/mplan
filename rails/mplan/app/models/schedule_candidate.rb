class ScheduleCandidate < ActiveRecord::Base
  belongs_to :mass
  has_and_belongs_to_many :lineup_items, :join_table => "lineup_items_schedule_candidates"
  has_and_belongs_to_many :schedules, :join_table => "schedule_candidates_schedules"
end
