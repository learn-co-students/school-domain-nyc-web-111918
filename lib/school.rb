require "pry"

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    self.roster[grade] = [] if self.roster[grade].nil?
    self.roster[grade] << student
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |grade, students| v.sort! }
  end

end
