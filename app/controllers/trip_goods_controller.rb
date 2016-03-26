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

		start_year = params[:trip_good]["beginning_date(1i)"]
		start_month = params[:trip_good]["beginning_date(2i)"].rjust(2,'0')
		start_day = params[:trip_good]["beginning_date(3i)"].rjust(2,'0')

		end_year = params[:trip_good]["end_date(1i)"]
		end_month = params[:trip_good]["end_date(2i)"].rjust(2,'0')
		end_day = params[:trip_good]["end_date(3i)"].rjust(2,'0')

		start_date = start_year,start_month,start_day
		end_date = end_year,end_month,end_day

		logger.debug "city_id is #{city_id}"
		logger.debug "the start day is #{start_date.join}"
		logger.debug "the end day is #{end_date.join}"

		if start_year=="" || start_month=="" || start_day=="" ||
			end_year=="" || end_month=="" || end_day==""
			return
		end

		@trip_goods = TripGood.where("city_id = ? and beginning_date <= ? and end_date >= ?",city_id,start_date.join,end_date.join)

	  end
	end

end
