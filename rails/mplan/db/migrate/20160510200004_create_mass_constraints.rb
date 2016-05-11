class CreateMassConstraints < ActiveRecord::Migration
  def change
    create_table :mass_constraints do |t|
      t.references :mass, index: true, foreign_key: true
      t.references :constraint, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
