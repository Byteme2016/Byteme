class TripGoodsController < ApplicationController
  def new
    @trip_good = TripGood.new
  end
  
  def create
    @trip_good = TripGood.new(trip_good_params)
    if @trip_good.save
     redirect_to '/'
    else  
      flash.now[:danger] = 'Generation failed, some information is missing!'  
      render 'new'
    end  
  end
  
  def show
    @trip_good = TripGood.new
  end
  def trip_good_params
   params.require(:trip_good).permit(:guider_id,:date_begining,:date_end,:price,:rating,:email,:review,:on_shelf,:title,:introduction,:capacity,)
  end
end
