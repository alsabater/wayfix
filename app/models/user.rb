class User < ActiveRecord::Base
	has_many :centerandusers
	has_many :centers, through: :centerandusers

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, :surname_1, :email, :password, presence: true
	validates :email, uniqueness: true, format: {with: VALID_EMAIL_REGEX}
	
	has_secure_password

end
