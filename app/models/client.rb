class Client < ActiveRecord::Base
	has_many :specialties, :centers
	belongs_to :user
end
