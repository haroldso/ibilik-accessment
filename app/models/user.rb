class User < ActiveRecord::Base
	has_many :properties
	has_many :comments
	has_many :bookings

	validates :username, presence: true, uniqueness: true
	validates :password, presence: true
	validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/}

	# This is Sinatra! Remember to create a migration!
end
