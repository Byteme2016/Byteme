class Traveler < ActiveRecord::Base
  has_many :ordered_trips
  has_many :paying_methods
end
