class SessionsController < ApplicationController
 def new
   @traveler =Traveler.new
  end
  def create
   @traveler = Traveler.find_by(email: params[:session][:email].downcase)
  #@traveler.authenticate('123456')
   if @traveler && @traveler.authenticate(params[:session][:password])
      traveler_log_in @traveler
      redirect_to action: 'show'
    else
    flash.now[:danger] = 'Wrong email/password combination!'  
       render 'travelers/show'
    end
  end
  def show
  end
end
