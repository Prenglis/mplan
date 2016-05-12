class CreateJoinTableScheduleScheduleCandidate < ActiveRecord::Migration
  def change
    create_join_table :schedules, :schedule_candidates do |t|
      # t.index [:schedule_id, :schedule_candidate_id]
      # t.index [:schedule_candidate_id, :schedule_id]
    end
  end
end
