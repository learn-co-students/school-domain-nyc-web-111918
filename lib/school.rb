# code here!
require 'pry'
class School
  attr_accessor :roster
  attr_reader :name

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student (student, grade)

    if @roster.keys.include?(grade)
      @roster[grade].push(student)
      @roster[grade]
    else
    @roster[grade] = [student]
    end
  end

  def grade (grade)
   return  @roster[grade]
  end

  def sort
    sorted_roster = {}
    sorted_grades = @roster.keys.sort
      sorted_grades.each do |grade|
      sorted_roster[grade] = @roster[grade].sort
      end
    sorted_roster
  end
end
