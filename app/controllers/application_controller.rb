class ApplicationController < ActionController::Base
	include SessionsHelper 
<<<<<<< HEAD
	
=======
	include GuidersSessionsHelper
>>>>>>> 869bfbd7b0f71e0a0814c77e2b6f8ee0faf7b025
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
