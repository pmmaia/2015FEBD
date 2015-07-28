class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.string :type
      t.string :recorded_by
      t.string :equipment
      t.string :weather
      t.references :project, index: true

      t.timestamps
    end
  end
end
