class TripGoodsController < ApplicationController
	
	def index
	end

	def show
	  if params[:trip_good] == nil
	  	render 'show'
	  else	
		city_name = params[:trip_good][:city]
		city = City.find_by_name(city_name)

		if city
			city_id = city.id
		else
			return
		end

		start_year = params[:trip_good]["date_beginning(1i)"]
		start_month = params[:trip_good]["date_beginning(2i)"].ljust(2,'0')
		start_day = params[:trip_good]["date_beginning(3i)"].ljust(2,'0')

		end_year = params[:trip_good]["date_end(1i)"]
		end_month = params[:trip_good]["date_end(2i)"].ljust(2,'0')
		end_day = params[:trip_good]["date_end(3i)"].ljust(2,'0')

		start_date = start_year,start_month,start_day
		end_date = end_year,end_month,end_day

		logger.debug "city_id is #{city_id}"
		logger.debug "the start day is #{start_date.join}"
		logger.debug "the end day is #{end_date.join}"

		if start_year=="" || start_month=="" || start_day=="" ||
			end_year=="" || end_month=="" || end_day==""
			return
		end

		@trip_goods = TripGood.where("city_id = ? and date_begining <= ? and date_end >= ?",city_id,start_date.join,end_date.join)

	  end
	end

end
