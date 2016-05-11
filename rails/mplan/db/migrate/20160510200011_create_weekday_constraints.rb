class CreateWeekdayConstraints < ActiveRecord::Migration
  def change
    create_table :weekday_constraints do |t|
      t.integer :day
      t.string :name
      t.references :constraint, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
