class Property < ActiveRecord::Base
		belongs_to :user
		has_many :comments
		has_many :bookings
		


		validates :name, presence: true
		validates :address, presence: true, length: {minimum: 3, maximum: 254}

	# This is Sinatra! Remember to create a migration!
end
