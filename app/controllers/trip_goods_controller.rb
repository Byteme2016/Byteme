class TripGoodsController < ApplicationController
	
	def index
	end

	def search
	  if params[:trip_good] == nil and session['city']==nil
	  	return
	  else	

	  	@city = params[:trip_good] ? params[:trip_good][:city] : session['city']
	  	@price =  params[:trip_good] ? params[:trip_good][:price] : session['price']
	  	
	  	# Build date strings for query
	  	if !session['beginning_date']
	  		start_year = params[:trip_good]["beginning_date(1i)"]
			start_month = params[:trip_good]["beginning_date(2i)"].rjust(2,'0')
			start_day = params[:trip_good]["beginning_date(3i)"].rjust(2,'0')
			start_date = start_year,start_month,start_day
		end

		if !session['end_date']
			end_year = params[:trip_good]["end_date(1i)"]
			end_month = params[:trip_good]["end_date(2i)"].rjust(2,'0')
			end_day = params[:trip_good]["end_date(3i)"].rjust(2,'0')
			end_date = end_year,end_month,end_day
		end

		if start_year != "" and start_month != "00" and start_day != "00" and !session['beginning_date']
			@start_date = start_date.join('-').to_date
		else
			@start_date = YAML.load(session['beginning_date'])
		end

		if end_year != "" and end_month != "00" and end_day != "00" and !session['end_date']
			@end_date = end_date.join('-').to_date
		else
			@end_date = YAML.load(session['end_date'])
		end

		city = @city ? City.find_by_name(@city) : nil

		# Find if the city exits or not, if not return directly
		city_id = city ? city.id : nil

		if !city_id
			return
		end

		# Find if the price is a valid number or not, if not set to null string
		if not @price =~ /[^a-zA-Z ]+/
			@price = ""
		end
		
		#logger.debug "city_id is #{city_id}"
		#logger.debug "the start day is #{start_date.join}"
		#logger.debug "the end day is #{end_date.join}"

		if (!@start_date or !@end_date or @start_date>@end_date)
			return
		end

		session['city']=@city
		session['beginning_date']=@start_date.to_yaml
		session['end_date']=@end_date.to_yaml

		#logger.debug "city is #{session[:city]}"
		#logger.debug "start_date is #{session[:beginning_date]}"
		#logger.debug "end_date is #{session[:end_date]}"

		if @price == ""
			@trip_goods = TripGood.where("city_id = ? and beginning_date <= ? and end_date >= ? and on_shelf = 1",
			city_id,@start_date,@end_date)
		else	
			session['price']=@price
			@trip_goods = TripGood.where("city_id = ? and beginning_date <= ? and end_date >= ? and on_shelf = 1 and price <= ?",
			city_id,@start_date,@end_date,@price.to_i())
		end
	  end
	end

	def detail
		@trip_good = TripGood.find(params[:id])
	end
end
