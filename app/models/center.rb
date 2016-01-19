class Center < ActiveRecord::Base
	belongs_to :client
	has_many :centerandusers
	has_many :users, through: :centerandusers
end

