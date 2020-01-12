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
  @roster.each {|grade, students| students.sort!}
  end
end
