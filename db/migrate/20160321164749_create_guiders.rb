class CreateGuiders < ActiveRecord::Migration
  def change
    create_table :guiders do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :password_digest
      t.string :e-mail
      t.string :user_name
      t.string :gender
      t.integer :age
      t.data :photo
      t.string :contact_number
      t.string :alter_number
      t.string :driver_license
      t.string :passport_number
      t.string :SSN
      t.integer :rating
      t.string :comment
      t.string :introduction
      t.string :stree_address
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
