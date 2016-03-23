class OrderedTrip < ActiveRecord::Base
  belongs_to :trip_good_id
  belongs_to :plan_id
  belongs_to :traveler_id

end
