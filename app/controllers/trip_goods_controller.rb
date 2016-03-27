class TripGoodsController < ApplicationController
  def index
   redirect_to action: 'new' 
  end
  
  def new
    @trip_good = TripGood.new
  end
  
  def create
    @trip_good = TripGood.new(trip_good_params)
    if @trip_good.save
     redirect_to  "https://recent-swetha3294.c9users.io/guiders/1"
    else
      flash.now[:danger] = 'Generation Failed, Enter Valid Information!'  
      render 'new'
    end
  end
  def show
    @trip_good = TripGood.where('TripGood = ? && on_shelf = 1', TripGood)
  end
  def trip_good_params
   params.require(:trip_good).permit(:guider_id,:city_id,:beginning_date,:end_date,:price,:rating,:email,:review,:on_shelf,:title,:introduction,:capacity)
  end
end
