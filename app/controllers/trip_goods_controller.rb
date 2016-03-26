class TripGoodsController < ApplicationController
	
	def index
	end

	def show
	  if params[:trip_good] == nil
	  	render 'show'
	  else	
	  	@city = params[:trip_good][:city]
	  	@price = params[:trip_good][:price]
	  	
	  	# Build date strings for query
		start_year = params[:trip_good]["beginning_date(1i)"]
		start_month = params[:trip_good]["beginning_date(2i)"].rjust(2,'0')
		start_day = params[:trip_good]["beginning_date(3i)"].rjust(2,'0')

		end_year = params[:trip_good]["end_date(1i)"]
		end_month = params[:trip_good]["end_date(2i)"].rjust(2,'0')
		end_day = params[:trip_good]["end_date(3i)"].rjust(2,'0')

		start_date = start_year,start_month,start_day
		end_date = end_year,end_month,end_day

		if start_year != "" and start_month != "00" and start_day != "00" 
			@start_date = start_date.join('-').to_date
		end

		if end_year != "" and end_month != "00" and end_day != "00"
			@end_date = end_date.join('-').to_date
		end

		city_name = params[:trip_good][:city]
		city = City.find_by_name(city_name)

		# Find if the city exits or not, if not return directly
		if city
			city_id = city.id
		else
			return
		end

		price = params[:trip_good][:price]

		# Find if the price is a valid number or not, if not set to null string
		if not price =~ /[^a-zA-Z ]+/
			price = ""
		end
		
		#logger.debug "city_id is #{city_id}"
		#logger.debug "the start day is #{start_date.join}"
		#logger.debug "the end day is #{end_date.join}"

		if !@start_date || !@end_date || @start_date>@end_date 
			return
		end

		if price == ""
			@trip_goods = TripGood.where("city_id = ? and beginning_date <= ? and end_date >= ? and on_shelf = 1",
			city_id,start_date.join('-').to_date,end_date.join('-').to_date)
		else			
			@trip_goods = TripGood.where("city_id = ? and beginning_date <= ? and end_date >= ? and on_shelf = 1 and price <= ?",
			city_id,start_date.join('-').to_date,end_date.join('-').to_date,price.to_i())
		end
	  end
	end

end
