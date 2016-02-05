class ClientsController < ApplicationController

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		@client.user_id = current_user.id
		current_user.client_id = @client.id
		if @client.save
			current_user.save
			redirect_to client_wizard_path(:client_info_1)
		else
			render 'new'
		end
	end

	private

	def client_params
		params.require(:client).permit(:user_id, :clinic_name, :nif, :address, :city,
			:province, :zip_code, :country, :phone_number_1, :phone_number_2, :fax_number,
			:email, :language, :currency)
	end
end