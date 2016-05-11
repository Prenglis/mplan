class CreateJoinTableMassRequirement < ActiveRecord::Migration
  def change
    create_join_table :masses, :requirements do |t|
      t.index [:mass_id, :requirement_id]
      t.index [:requirement_id, :mass_id]
    end
  end
end
