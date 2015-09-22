class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def require_login
       if session[:account].nil?
           return redirect_to controller: "admin", action: "login"
       end 
   end 

   def load_current_account
       @account = Account.find(session[:account]) if not session[:account].nil?
   end 


end
