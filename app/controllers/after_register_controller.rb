class AfterRegisterController < ApplicationController
	include Wicked::Wizard
	steps :personal_1, :personal_2

	attr_accessor :active


	def show
		@user = current_user
		render_wizard
	end

	def update
		@user = current_user
		@user.active = "true"
		@user.attributes = user_params
		render_wizard (@user)
	end

	def finish_wizard_path
		user_path(current_user)
	end

	private
	def user_params
    params.require(:user).permit(:name, :surname_1, :surname_2, :dni_passport, :genre, :birthday, :country, :phone_number_1, :phone_number_2, :email, :password, :job_position, :active)
  	end

end