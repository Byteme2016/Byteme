class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :password
      t.string :e-mail
      t.string :username
      t.string :gender
      t.integer :age
      t.data :photo
      t.string :contact_number
      t.string :alter_number
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps null: false
    end
  end
end
