class RenameBlogsToRecords < ActiveRecord::Migration
  def change
    rename_table :blogs,  :records
  end
end
