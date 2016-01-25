class AfterRegisterController < Wicked::WizardController
	steps :personal_1, :personal_2
	attr_accessor :status

	def show
		@user = current_user
		render_wizard
	end

	def update
		@user = current_user
		@user.update_attributes(user_params)
		render_wizard @user
	end

	def finish_wizard_path
		@user = current_user
		@user.status = "true"
		@user.save
		user_path(@user)
	end

	private
	def user_params
    params.require(:user).permit(:status, :name, :surname_1, :surname_2, :dni_passport, :genre, :birthday, :country, :phone_number_1, :phone_number_2, :job_position)
  	end

end