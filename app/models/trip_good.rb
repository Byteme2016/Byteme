class TripGood < ActiveRecord::Base
  belongs_to :cities
  belongs_to :guiders
  has_many :catagories
  has_many :ordered_trips
  validates :beginning_date, presence: true
  validates :end_date, presence: true
end

