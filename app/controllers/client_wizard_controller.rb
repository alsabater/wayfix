class ClientWizardController < ApplicationController
	include Wicked::Wizard

	steps :client_info_1, :client_info_2

	def show
		@client = Client.where(user_id: current_user.id).to_sql
		render_wizard
	end

	def update
		@client = Client.where(user_id: current_user.id).to_sql
		@client.attributes = client_params
		render_wizard(@client)
	end

	def finish_wizard_path
		user_path
	end

	private
	def client_params
		params.require(:client).permit(:user_id, :clinic_name, :nif, :address, :city,
			:province, :zip_code, :country, :phone_number_1, :phone_number_2, :fax_number,
			:email, :language, :currency)  	end

end