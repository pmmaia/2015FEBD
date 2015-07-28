class CreateClientContacts < ActiveRecord::Migration
  def change
    create_table :client_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.references :client, index: true

      t.timestamps
    end
  end
end
