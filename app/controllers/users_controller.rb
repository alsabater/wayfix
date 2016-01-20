class UsersController < ApplicationController
	
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success]="User successfully created"
			session[:user_id] = @user.id
			redirect_to root_path
		else
			render 'new'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :surname_1, :surname_2, :dni, :passport, :genre, :birthday, :country, :phone_number_1, :phone_number_2, :email, :password, :job_position)
	end
end