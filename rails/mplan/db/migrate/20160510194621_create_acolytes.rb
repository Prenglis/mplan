class CreateAcolytes < ActiveRecord::Migration
  def change
    create_table :acolytes do |t|
      t.string :firstname
      t.string :lastname
      t.references :church, index: true, foreign_key: true
      t.date :since

      t.timestamps null: false
    end
  end
end
