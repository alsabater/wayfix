class Specialty < ActiveRecord::Base
	has_many :clients
	has_many :centers
end
