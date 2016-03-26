class TravelersController < ApplicationController
  def index
   redirect_to action: 'new' 
  end
  
  def new
    @traveler = Traveler.new
  end
  
  def edit
      @traveler = Traveler.find params[:id]
  end
  
  def create
    @traveler = Traveler.new(traveler_params)
    if @traveler.save
     redirect_to @traveler 
    else  
      flash.now[:danger] = 'Registration failed, some information is missing!'  
      render 'new'
    end  
  end
  
  def show
    @traveler = Traveler.new
  end
  def traveler_params
   params.require(:traveler).permit(:first_name,:middle_name,:last_name,:password,:password_confirmation,:email,:username,:gender,:age,:photo,:contact_number,:alter_number,:street_address,:city,:state,:zip_code,:country)
  end
end
