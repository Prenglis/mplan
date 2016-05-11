class CreateScheduleHeaders < ActiveRecord::Migration
  def change
    create_table :schedule_headers do |t|
      t.datetime :from
      t.datetime :to

      t.timestamps null: false
    end
  end
end
