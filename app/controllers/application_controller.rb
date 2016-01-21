class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   	helper_method :current_user, :logged_in?

  def current_client
    @client = Client.find_by user_id: current_user.id
  end

 	def current_user
 		@current_user ||= User.find(session[:user_id]) if session[:user_id]
 	end

 	def logged_in?
 		!!current_user
 	end

	def require_login
    	if !logged_in?
    		flash[:danger] = "Has de iniciar sesión para acceder al panel"
    		redirect_to login_path
    	end
	end
end
