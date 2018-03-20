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
