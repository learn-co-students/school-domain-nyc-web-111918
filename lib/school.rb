require "pry"

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    students_in_grade = []
    @roster.each do |age, name|
      if age == num
        students_in_grade << name
      end
    end
    students_in_grade.flatten
  end

  def sort
    sorted = @roster.each do |grade, students|
      students.sort!
    end
    sorted
  end


end #end of class
