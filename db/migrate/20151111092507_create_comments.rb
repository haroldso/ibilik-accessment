class CreateComments < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.text :body
			t.string :user_id
			t.string :property_id
			t.timestamp null: false
		end
	end
end
