class ClientsController < ApplicationController
	before_action :already_has_a_client?, only: [:new, :create]
	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		@client.user_id = current_user.id
		current_user.client_id = @client.id
		if @client.save
			current_user.save
			redirect_to users_settings_path
		else
			render 'new'
		end
	end

	def destroy
		@client = Client.find(current_user.client_id)
	end

	private

	def client_params
		params.require(:client).permit(:user_id, :clinic_name, :nif, :address, :city,
			:province, :zip_code, :country, :phone_number_1, :phone_number_2, :fax_number,
			:email, :language, :currency)
	end

	def already_has_a_client?
		@client = Client.all
		if @client.where(user_id: current_user.id).exists?
			flash[:danger] = "Solamente puedes ser administrador de una clínica"
			redirect_to users_settings_path
		end
	end
end