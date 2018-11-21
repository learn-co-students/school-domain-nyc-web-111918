require 'pry'
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
  end

  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster.has_key?(grade)
      self.roster[grade] << name
    else
      self.roster[grade] = [].push(name)
    end
  end

  def grade(grade)
    @grade = self.roster[grade]
  end

  def sort
    @roster.map do |key, value|
      @roster[key] = value.sort
    end
    return @roster
  end
end
