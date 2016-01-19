class User < ActiveRecord::Base
	has_many :centers, through: :centerandusers
end
