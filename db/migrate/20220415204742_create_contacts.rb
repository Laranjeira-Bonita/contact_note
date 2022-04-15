class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email
      t.string :city
      t.string :state
      t.integer :country_id
      t.string :telefone
      t.string :relation_type, null: false

      t.timestamps
    end
  end
end
