class City < ActiveRecord::Base
  belongs_to :states
  has_many :trip_goods
end
