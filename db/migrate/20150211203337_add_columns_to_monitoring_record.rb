class AddColumnsToMonitoringRecord < ActiveRecord::Migration
  def change
    add_column :monitoring_records, :end_time, :time
    add_column :monitoring_records, :wind_speed, :string
  end
end
