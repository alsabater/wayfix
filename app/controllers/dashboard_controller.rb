class DashboardController < ApplicationController
	before_action :require_login
 
  	def index
	end

	private
 
	def require_login
    	if session[:user_id] == nil
    		flash[:error] = "You must be logged in to access this section"
    		redirect_to login_path
    	end
	end
end