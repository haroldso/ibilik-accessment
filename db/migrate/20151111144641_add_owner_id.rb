class AddOwnerId < ActiveRecord::Migration
	def change
		add_column :bookings, :owner_id, :string
	end
end
