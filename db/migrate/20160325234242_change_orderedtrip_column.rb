class ChangeOrderedtripColumn < ActiveRecord::Migration
  def change
  	rename_column :ordered_trips, :trip_good_id_id, :trip_good_id
  	 rename_column :ordered_trips, :plan_id_id, :plan_id
  	 rename_column :ordered_trips, :traveler_id_id, :traveler_id
  end
end
