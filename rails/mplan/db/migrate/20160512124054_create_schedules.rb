class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :schedule_header, index: true, foreign_key: true
      t.float :fitness

      t.timestamps null: false
    end
  end
end
