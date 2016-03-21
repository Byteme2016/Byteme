class CreateTripGoods < ActiveRecord::Migration
  def change
    create_table :trip_goods do |t|
      t.references :city, index: true, foreign_key: true
      t.references :guider, index: true, foreign_key: true
      t.date :date_begining
      t.date :date_end
      t.integer :price
      t.integer :rating
      t.string :review
      t.boolean :on_shelf
      t.string :introduction
      t.string :title
      t.integer :capacity
      t.timestamps
    end
  end
end
