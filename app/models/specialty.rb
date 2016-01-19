class Specialty < ActiveRecord::Base
	has_many :clients, :centers
end
