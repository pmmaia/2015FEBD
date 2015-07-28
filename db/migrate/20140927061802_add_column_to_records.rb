class AddColumnToRecords < ActiveRecord::Migration
  def change
    add_column :records, :water, :string
  end
end
