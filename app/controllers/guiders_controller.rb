class GuidersController < ApplicationController
  def index
   redirect_to action: 'new' 
  end
  
  def new
    @guider = Guider.new
  end
  
  def edit
       @traveler = Traveler.find_by(id: session[:id])  
  end
  
  def create
    @guider = Guider.new(guider_params)
    if @guider.save
     redirect_to guiders_login_path 
    else  
     flash.now[:danger] = 'Registration failed, some information is missing!'  
     render 'new'
    end  
  end
   def update
    @guider = Guider.find_by(id: session[:id])
    if @guider.update(guider_params)
      flash[:danger]="Update succeeded!"      
      redirect_to @guider
    else 
      flash[:danger]="Update failed!" 
      redirect_to @guider
    end 
  end
  
  def show
    @guider = Guider.find_by(id: session[:id])
    flash.now[:notice] = 'Welcome back! Dear '+ @guider.first_name
  end
  def guider_params
   params.require(:guider).permit(:attachment,:first_name,:middle_name,:last_name,:password,:password_confirmation,:email,:username,:gender,:age,:photo,:contact_number,:alter_number,:street_address,:country,:city,:state,:zip_code, :passport_number, :driver_license, :SSN, :rating, :introduction, :comment)
  end
end
