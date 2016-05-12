class Schedule < ActiveRecord::Base
  belongs_to :schedule_header
  has_and_belongs_to_many :schedule_candidates, :join_table => "schedule_candidates_schedules"
end
