class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email
      t.string :city
      t.string :state
      t.integer :user_id
      t.string :country
      t.string :phone
      t.string :relation_type, null: false

      t.timestamps
    end
  end
end
