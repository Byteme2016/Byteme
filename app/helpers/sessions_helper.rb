module SessionsHelper
  def traveler_log_in(traveler)
    session[:traveler_id] = traveler.id
  end
end
