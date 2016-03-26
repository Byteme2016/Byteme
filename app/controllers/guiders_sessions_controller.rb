class GuidersSessionsController < ApplicationController
  def new
   @guider =Guider.new
  end
  def create
   @guider = Guider.find_by(email: params[:session][:email].downcase)
  #@guider.authenticate('123456')
   if @guider && @guider.authenticate(params[:session][:password])
      guider_log_in  @guider
      redirect_to action: 'show'
    else
    flash.now[:danger] = 'Wrong email/password combination!'  
       render 'guiders/show'
    end
  end
  def show
  end
end
