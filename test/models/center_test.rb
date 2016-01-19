require 'test_helper'

class CenterTest < ActiveSupport::TestCase

	def setup
		@center = Center.new(name: "Valencia")
	end
	
	test "center should be valid" do
		assert @center.valid?
	end
end
