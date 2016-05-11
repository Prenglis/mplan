class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :constraints, :type, :ctype
  end
end
