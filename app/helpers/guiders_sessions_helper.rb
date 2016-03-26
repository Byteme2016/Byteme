module GuidersSessionsHelper
 def guider_log_in(guider)
    session[:guider_id] = guider.id
 end
end

