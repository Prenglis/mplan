class CreateConstraints < ActiveRecord::Migration
  def change
    create_table :constraints do |t|
      t.integer :type

      t.timestamps null: false
    end
  end
end
