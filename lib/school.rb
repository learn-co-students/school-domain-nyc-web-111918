require 'pry'
class School
  def initialize(name)
    @name=name
    @roster={}
  end

  def roster
    @roster
  end
  def add_student(name, age)
    if roster.has_key?(age)
      @roster[age].push(name)
    else
      @roster[age]=[name]
    end
  end
  def grade(age)
    @roster[age]
  end
  def sort
    @roster.each{|key, value| @roster[key]=value.sort}.sort.to_h
  end

end# code here!
