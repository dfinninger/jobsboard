class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.datetime :birthday
      t.datetime :join_date
      t.integer :views

      t.timestamps null: false
    end
    add_index :profiles, :username, unique: true
    add_index :profiles, :email, unique: true
  end
end
