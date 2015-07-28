class AddColumnsToRecords < ActiveRecord::Migration
  def change
    add_column :records, :sampleid, :string
    add_column :records, :soil, :string
  end
end
