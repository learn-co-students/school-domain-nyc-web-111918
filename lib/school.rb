require 'pry'

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

  def grade(grade)
    @roster.select do |student_grade, student_name|
      if grade == student_grade
         return student_name
      end
    end
    # @roster[grade]
  end


  def sort
    sort_key_order = @roster.keys.sort
    sort_value_order = @roster.values.sort
    @roster.sort_by {|grade, student| grade}

    @roster.map do |grades, student_name|
      # binding.pry
      @roster[grades] = student_name.sort!
      # binding.pry
      return @roster
    end

  end

end # end of school class
