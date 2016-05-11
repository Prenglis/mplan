class CreateLineupItems < ActiveRecord::Migration
  def change
    create_table :lineup_items do |t|
      t.references :acolyte, index: true, foreign_key: true
      t.references :position, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
