class OrderedTripsController < ApplicationController
	def show
		@orders = []
		traveler_id = session[:id]
		tmp_orders = OrderedTrip.find_by_traveler_id(traveler_id)
		valid_goods = TripGood.where("on_shelf = 1")

		valid_goods_id = []
		valid_goods.each do |id|
			if not valid_goods_id.contains id
				valid_goods_id << id
			end
		end

		tmp_orders.each do |order|
			if valid_goods_id.contains order.trip_good_id
				@orders << order
			end
		end
	end

	def new
	end

	def create
		@trip_good = TripGood.find(params[:id])
		@order = OrderedTrip.new()
		@order.traveler_id = session[:id]
		@order.trip_good_id = @trip_good.id
		@order.ordered_time = DateTime.now

		if @order.save
			flash[:notice] = "Order has been placed!"
			redirect_to "/search_goods"
		else
			flash[:alert] = "Wait a moment and order again"
			render 'trip_goods/detail' 
		end	
	end

	def destroy

	end
end
