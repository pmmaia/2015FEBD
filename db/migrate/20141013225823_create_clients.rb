class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company
      t.string :division
      t.string :address_01
      t.string :address_02
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
