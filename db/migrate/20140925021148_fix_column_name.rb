class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :records, :name, :finalvalue
  end
end
