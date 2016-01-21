class UsersController < ApplicationController
	before_action :require_login, only: [:show, :edit, :update]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success]="User successfully created"
			session[:user_id] = @user.id
			redirect_to user_path(@user.id)
		else
			render 'new'
		end
	end

	def show
		@user = User.find(current_user)
	end

	def edit
		@user = User.find(current_user)
	end

	def update
		@user = User.find(current_user)
		if @user.update(user_params)
			redirect_to user_path
		else
			render 'edit'
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :surname_1, :surname_2, :dni, :passport, :genre, :birthday, :country, :phone_number_1, :phone_number_2, :email, :password, :job_position)
	end

end