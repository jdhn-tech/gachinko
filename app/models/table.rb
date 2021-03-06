class Table < ApplicationRecord

	# validates :table_number, :presence => true, :uniqueness => true

	def getActiveNote
		return Note.where(table_number: self.table_number, active: true).compact
	end

	def getAllNotes
		return Note.where(table_number: self.table_number).compact
	end

	def self.getTableByNumber(number)
		return find_by(table_number: number)
	end
	
end