class AddColumnPressureToMonitoringRecord < ActiveRecord::Migration
  def change
    add_column :monitoring_records, :pressure, :string
  end
end
