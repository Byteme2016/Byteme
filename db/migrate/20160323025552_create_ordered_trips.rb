class CreateOrderedTrips < ActiveRecord::Migration
  def change
    create_table :ordered_trips do |t|
      t.datetime :ordered_time
      t.varchar{256} :requirement
      t.references :trip_good_id, index: true, foreign_key: true
      t.references :plan_id, index: true, foreign_key: true
      t.references :traveler_id, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :ordered_trips, :requirement
  end
end
