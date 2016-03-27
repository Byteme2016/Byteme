module GuidersSessionsHelper
 def guider_log_in(guider)
    session[:id] = guider.id
 end
end

