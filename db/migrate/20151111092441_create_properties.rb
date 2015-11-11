class CreateProperties < ActiveRecord::Migration
	def change
		create_table :properties do |t|
			t.string :name, presence: true
			t.string :address, presence: true
			t.string :rental_price, presence: true
			t.string :description
			t.string :user_id
			t.string :contact
			t.timestamp null: false
		end
	end
end
