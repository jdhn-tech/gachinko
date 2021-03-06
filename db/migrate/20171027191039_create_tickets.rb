class CreateTickets < ActiveRecord::Migration[5.1]
	def change
		create_table :tickets do |t|
			t.integer :value
			t.string :currency
			t.references :note
			t.boolean :paid
			t.string :payment_methods
			t.string :note_entry_list
			t.string :average_split
			t.string :value_split
			t.timestamps
		end
	end
end
