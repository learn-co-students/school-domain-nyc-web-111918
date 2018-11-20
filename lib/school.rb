class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade]<< name
    else
    roster[grade]= [] #this will be an else statement, if the key :grade does not already exist
    roster[grade]<< name #add name to array
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, names|
      roster[grade] = names.sort
    end
  end
end
