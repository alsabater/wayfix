class User < ActiveRecord::Base
	has_many :centerandusers
	has_many :centers, through: :centerandusers
end
