# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
    helper_method :admin?
    
     protected

     def authorize
       unless admin?
         flash[:error] = "Unathorized access"
         redirect_to(:controller => "lotto", :action => "index")
       end
     end

     def admin?
       session[:password] == "dRETr3"
     end
    
  
  private
  
  
end
