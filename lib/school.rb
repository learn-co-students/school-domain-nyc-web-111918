class School
attr_accessor :school_name, :roster 

def 
initialize(school_name)
@school_name = school_name
@roster = {}
end # end of initialization


def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
  end
end

def grade(grade) #returns every person in that grade,
  students = []
  @roster.each do |student_grade,student|
  if grade == student_grade then students << student
  end
  end
  students[0]
end

def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end #end of class creation






