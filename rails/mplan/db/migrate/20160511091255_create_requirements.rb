class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.references :position, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
