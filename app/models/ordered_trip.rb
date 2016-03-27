class OrderedTrip < ActiveRecord::Base
  belongs_to :trip_good
  belongs_to :plan
  belongs_to :traveler
end
