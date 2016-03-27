module SessionsHelper
  def traveler_log_in(traveler)
    session[:id] = traveler.id
  end
end
