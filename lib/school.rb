require 'irb'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   {}
  # end

  def add_student(student_name, grade)
    if !roster[grade]
      roster[grade] = []
      roster[grade] << student_name
    else
      roster[grade] << student_name
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    sorted_roster = {}
    roster.map {
      |grade, names|
      sorted_roster[grade] = names.sort
    }
    sorted_roster
  end

end
