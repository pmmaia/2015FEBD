class RenameTypeColumnToMonitoredType < ActiveRecord::Migration
  def change
    rename_column :activities, :type, :monitored_type
  end
end
