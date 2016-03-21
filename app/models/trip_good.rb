class TripGood < ActiveRecord::Base
  belongs_to :cities
  belongs_to :guiders
  has_many :catagories
  has_many :ordered_trips

end
