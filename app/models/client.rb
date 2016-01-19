class Client < ActiveRecord::Base
	has_many :specialties
	has_many :centers
	belongs_to :user
end
