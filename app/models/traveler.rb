class Traveler < ActiveRecord::Base
  has_many :ordered_trips
  has_many :paying_methods
  has_secure_password
end
