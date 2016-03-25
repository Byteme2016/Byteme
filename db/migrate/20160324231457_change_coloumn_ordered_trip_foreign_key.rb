class ChangeColoumnPassword < ActiveRecord::Migration
  def change
  	 rename_column :ordered_trip, :trip_good_id, :trip_good
  	 rename_column :ordered_trip, :plan_id, :plan
  	 rename_column :ordered_trip, :traveler_id, :traveler
  end
end
