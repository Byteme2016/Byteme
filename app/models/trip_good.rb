class TripGood < ActiveRecord::Base
  belongs_to :city
  belongs_to :guider
  has_many :catagories
  has_many :ordered_trips
  validates :beginning_date, presence: true
  validates :end_date, presence: true
end

