class School
  attr_accessor :roster
  attr_reader :name

def initialize(school_name)
  @name = school_name
  @roster = {}
end

def add_student(student_name, student_id)
  if @roster.has_key?(student_id)
    @roster[student_id] << student_name
  else
    @roster[student_id] = []
    @roster[student_id] << student_name
  end
end

def grade(num)
  @roster[num]
end

def sort
  @roster.each do |student_id, student_names|
    student_names.sort!
  end
end

end # End of School class
