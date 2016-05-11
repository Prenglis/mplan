class CreateScheduleFitnesses < ActiveRecord::Migration
  def change
    create_table :schedule_fitnesses do |t|
      t.references :schedule_header, index: true, foreign_key: true
      t.references :schedule_candidate, index: true, foreign_key: true
      t.float :fitness

      t.timestamps null: false
    end
  end
end
