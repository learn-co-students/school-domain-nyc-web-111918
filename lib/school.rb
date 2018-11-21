# code here!
class School

	attr_accessor :name, :roster

	def initialize(name)
		@roster = {}
		@name = name
	end

	def add_student(name, grade)
		roster[grade] = roster[grade] || []
		return roster[grade] << name
	end

	def grade(grade)
		roster[grade]
	end

	def sort
		sorted_hash = {}
		roster.each do |grade, names|
			sorted_hash[grade] = names.sort
		end
		return sorted_hash
	end

end # end of School class method