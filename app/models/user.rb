class User < ActiveRecord::Base
	has_many :properties
	has_many :comments
	has_many :bookings

	validates :username, presence: true, uniqueness: true
	validates :password, presence: true
	validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/}

	def self.authenticate(email, password)
		user = User.find_by(email: email)
		if user && user.password == password
			return user
		else
			nil
		end
	end
	# This is Sinatra! Remember to create a migration!
end
