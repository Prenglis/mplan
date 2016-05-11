class CreateMasses < ActiveRecord::Migration
  def change
    create_table :masses do |t|
      t.datetime :begin
      t.datetime :end
      t.references :church, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
