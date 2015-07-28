class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :number
      t.string :location
      t.references :client, index: true

      t.timestamps
    end
  end
end
