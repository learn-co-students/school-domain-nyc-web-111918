# code here!
require 'pry'

class School

attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

def add_student(student_name, grade)
  if @roster[grade] == nil
    @roster[grade] = [student_name]
  else
    @roster[grade] << student_name
  end
end

  def grade(grade)
    @roster[grade]
  end

  def sort
      @roster.map do |grade_in_hash, students|
        students.sort!
      end
      @roster
    end

  end


# add_student(10, "avi")
