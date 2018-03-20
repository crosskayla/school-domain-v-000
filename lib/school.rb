require 'pry'

class School

  attr_reader :roster, :name

  def initialize(name)
    @name = name
  end

  def roster
    ROSTER = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

end

school = School.new("Greendale Community College")
school.add_student("Kayla", 12)
binding.pry
school.add_student("Nate", 11)
puts school.roster
