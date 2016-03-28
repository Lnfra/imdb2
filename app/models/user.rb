class User < ActiveRecord::Base
	has_many :reviews

	def full_name
		returns "#{firstname} #{lastname}"
	end
end
