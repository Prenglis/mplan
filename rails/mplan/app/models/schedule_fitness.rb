class ScheduleFitness < ActiveRecord::Base
  belongs_to :schedule_header
  belongs_to :schedule_candidate
end
