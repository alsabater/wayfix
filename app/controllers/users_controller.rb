class UsersController < ApplicationController
	before_action :require_login, only: [:show, :edit, :update]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to after_register_path(:personal_1)
		else
			render 'new'
		end
	end

	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update_attributes(user_params)
		redirect_to user_path
	end

	def settings
		@client = current_client
	end

	private
 	def user_params
    params.require(:user).permit(:status, :name, :surname_1, :surname_2, :dni_passport, :genre, :birthday, :country, :phone_number_1, :phone_number_2, :email, :password, :job_position)
  	end
end