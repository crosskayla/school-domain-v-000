require 'pry'

class School

  attr_reader :name

  def initialize(name)
    @name = name
  end

  ROSTER = {}

  def add_student(name, grade)
    if ROSTER.key?(grade)
      ROSTER[grade] << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
    end
  end

  def roster
    ROSTER
  end

  def grade(grade)
    ROSTER[grade]
  end

end

school = School.new("Greendale Community College")
school.add_student("Kayla", 12)
school.add_student("Nate", 11)
school.add_student("Elizabeth", 12)
puts school.roster
puts school.grade(12)
