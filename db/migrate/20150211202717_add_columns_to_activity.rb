class AddColumnsToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :monitoring_parameter, :string
    add_column :activities, :action_level, :string
  end
end
