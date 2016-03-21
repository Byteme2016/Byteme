class TripGood < ActiveRecord::Base
  belongs_to :city
  belongs_to :guider
end
