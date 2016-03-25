class SessionsController < ApplicationController
 def new
   flash.now[:notice] = 'Congratulations!Now go ahead and login!'
   @traveler =Traveler.new
  end
  def create
   @traveler = Traveler.find_by(email: params[:session][:email].downcase)
  #@traveler.authenticate('123456')
   if @traveler && @traveler.authenticate(params[:session][:password])
      traveler_log_in @traveler
      redirect_to @traveler
    else
      flash.now[:danger] = 'Wrong email/password combination!'
      render 'new'
    end
  end
end
