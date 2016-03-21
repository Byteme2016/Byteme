class Guider < ActiveRecord::Base
  has_many :languages
  has_many :trip_goods
end
