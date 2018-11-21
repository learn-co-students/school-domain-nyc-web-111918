require 'pry'
class School

attr_accessor :roster #need to read and write
attr_reader :school_name #only need to read the school name

def initialize(name) # initialize the school name
  @school_name = name
  @roster = {} #empty hash when initialized.
end
        #sudent name -String -- grad FixNum
def add_student(name, grade)
  @add_student = name
  @grade = grade
     #hash             number - first key
   if @roster.include?(grade) #if there is not a current key that include a grade
    @roster[grade] << name #puting the key of grade in the has and pushing the name
  else #if the grade is already included in the hash do this
     @roster[grade] = []  #put any empty array in the hash and assing it to grade key
     @roster[grade] << name # push the students name into that Hash
   end #end of if statments
  end

def grade(grade) #gets all students method
 @roster[grade]
end

  def sort
    @roster.map do |grade, student_arr|
    @roster[grade] = student_arr.sort
    end #end of map
    @roster
  end

# how to add a new variable to a hash
# hash["key"] = "new element"

# binding.pry
end #end of class method
