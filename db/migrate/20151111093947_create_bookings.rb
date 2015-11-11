class CreateBookings < ActiveRecord::Migration
	def change
		create_table :bookings do |t|
			t.string :message, presence: true
			t.string :user_id
			t.string :property_id
			t.timestamp null: false
		end
	end
end
