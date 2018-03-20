class School

  attr_reader :roster

  ROSTER = {}

  def initialize(name)
    @name = name
  end

  def add_student(name, grade)
    if ROSTER.key?(grade)
      ROSTER << name
  end

end

school = School.new("Greendale Community College")
