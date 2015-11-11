class CreateUsers < ActiveRecord::Migration

	def change
		create_table :users do |t|
			t.string :username, presence: true, uniqueness: true
			t.string :password, presence: true
			t.string :email, presence: true, uniqueness: true
			t.string :contact, presence: true
			t.timestamp null: false
		end
	end
end
