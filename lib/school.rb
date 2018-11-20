# code here!
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !roster[grade]
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    # create a new hash
    ordered = {}
    # iterate over each grade in the roster
    roster.map do |grade, students|
      # set keys in ordered equal to sorted strings of students from roster
      ordered[grade] = students.sort
    end
    # return ordered
    ordered
  end

end
