class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :client_id
      t.string :name
      t.string :surname_1
      t.string :surname_2
      t.string :dni
      t.string :passport
      t.string :genre
      t.date :birthday
      t.string :country
      t.string :phone_number_1
      t.string :phone_number_2
      t.string :email
      t.string :password_digest
      t.string :language
      t.string :job_position
      t.boolean	:is_admin?, default: false
      t.boolean :access_medical_data?, default: true
      t.boolean :access_agenda?, default: true
      t.boolean :access_statistics?, default: true
      t.boolean :access_accounting?, default: true
      t.boolean :is_active?, default: true
      t.timestamps null: false
    end
  end
end
