class CreateIntervalConstraints < ActiveRecord::Migration
  def change
    create_table :interval_constraints do |t|
      t.datetime :from
      t.datetime :to
      t.references :constraint, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
