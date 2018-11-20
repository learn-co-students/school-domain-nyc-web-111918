# code here!
class School
  attr_accessor :roster
  def initialize(name)
    @roster = {}
  end

  def roster_age(age)
    @roster[age] = [] if @roster[age].nil?
    @roster[age]
  end

  def add_student(name, age)
    roster_age(age) << name
  end

  def grade(age)
    roster_age(age)
  end

  def sort
    @roster.each do |age, names|
       @roster[age] = names.sort
    end
      @roster
  end
end #end of School Class
