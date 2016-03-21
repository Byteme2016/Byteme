class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.references :trip_good, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
