class CreatePayingMethods < ActiveRecord::Migration
  def change
    create_table :paying_methods do |t|
      t.string :api_name, limit: 50
      t.references :traveler, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
