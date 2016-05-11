class CreateJoinTableAcolyteConstraint < ActiveRecord::Migration
  def change
    create_join_table :acolytes, :constraints do |t|
      t.index [:acolyte_id, :constraint_id]
      t.index [:constraint_id, :acolyte_id]
    end
  end
end
