class GuidersSessionsController < ApplicationController
  def new
   flash.now[:notice] = 'Congratulations!Now go ahead and login!'
   @guider =Guider.new
  end
 def create
   @guider = Guider.find_by(email: params[:session][:email].downcase)
  #@traveler.authenticate('123456')
   if @guider && @guider.authenticate(params[:session][:password])
      guider_log_in @guider
      redirect_to @guider
    else
      flash.now[:danger] = 'Wrong email/password combination!'
      render 'new'
    end
  end
end
