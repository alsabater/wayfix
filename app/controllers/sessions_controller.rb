class SessionsController < ApplicationController
	before_action :session_empty?, only: :new
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			flash[:success] = "Bienvenido a Wayfix"
			session[:user_id] = user.id
			redirect_to user_path(user.id)
		else
			flash.now[:danger] = "El email o el password no se corresponden con ningún usuario"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "Has cerrado la sesión"
		redirect_to login_path
	end

	private

	helper_method :session_empty?

	def session_empty?
		if current_user
			redirect_to user_path(current_user)
		end
	end
end