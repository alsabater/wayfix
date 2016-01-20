class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to root_path
		else
			flash.now[:danger] = "El email o el password no se corresponden con ningún usuario"
			render 'new'
		end
	end

	def destroy
		session.destroy
		redirect_to login_path
	end
end