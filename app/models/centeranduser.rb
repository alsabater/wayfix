class Centeranduser < ActiveRecord::Base
	belongs_to :user
	belongs_to :center
end
