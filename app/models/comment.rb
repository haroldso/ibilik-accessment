class Comment < ActiveRecord::Base
	belongs_to :property
	belongs_to :user

	
	# This is Sinatra! Remember to create a migration!
end
