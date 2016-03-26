class GuidersController < ApplicationController
  def index
   redirect_to action: 'new' 
  end
  
  def new
    @guider = Guider.new
  end
  
  def edit
      @guider = Guider.find params[:id]
  end
  
  def create
    @guider = Guider.new(guider_params)
    if @guider.save
     redirect_to @guider 
    else  
      flash.now[:danger] = 'Registration failed, some information is missing!'  
      render 'new'
    end  
  end
  
  def show
    @guider = Guider.new
  end
  def guider_params
   params.require(:guider).permit(:first_name,:middle_name,:last_name,:password,:password_confirmation,:email,:username,:gender,:age,:photo,:contact_number,:alter_number,:street_address,:city,:state,:zip_code,:country)
  end
end
