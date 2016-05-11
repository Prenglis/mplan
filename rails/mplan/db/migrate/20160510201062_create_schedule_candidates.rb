class CreateScheduleCandidates < ActiveRecord::Migration
  def change
    create_table :schedule_candidates do |t|
      t.references :mass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
