class CreateMonitoringRecords < ActiveRecord::Migration
  def change
    create_table :monitoring_records do |t|
      t.integer :tag
      t.time :start_time
      t.decimal :temperature
      t.decimal :relative_humidity
      t.string :wind_direction
      t.decimal :measurement
      t.string :site_activity
      t.string :site_location
      t.references :activity, index: true

      t.timestamps
    end
  end
end
