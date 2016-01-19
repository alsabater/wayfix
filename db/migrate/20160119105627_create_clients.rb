class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :clinic_name
      t.string :nif
      t.string :address
      t.string :city
      t.string :province
      t.string :zip_code
      t.string :country
      t.string :phone_number_1
      t.string :phone_number_2
      t.string :fax_number
      t.string :email
      t.string :language
      t.string :currency
      t.timestamps null: false
    end
  end
end
