class School

  attr_reader :roster

  ROSTER = {}

  def initialize(name)
    @name = name
  end

  def add_student(name, grade)
    if ROSTER.key?(grade)
      ROSTER << name
    else
      ROSTER[grade] = []
      ROSTER[grade] << name
      binding.pry
    end
  end

end

school = School.new("Greendale Community College")
school.add_student("Kayla", 12)
school.add_student("Nate", 11)
puts school.roster
