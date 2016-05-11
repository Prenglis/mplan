class CreateJoinTableScheduleCandidateLineupItem < ActiveRecord::Migration
  def change
    create_join_table :schedule_candidates, :lineup_items do |t|
      t.index([:schedule_candidate_id, :lineup_item_id], unique: true, name: "i_sc_li")
    end
  end
end
