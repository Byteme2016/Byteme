class Plan < ActiveRecord::Base
	has_many :ordered_trip
end
