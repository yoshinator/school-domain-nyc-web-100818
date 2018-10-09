require 'pry'
class School

  @@instances = []

  def initialize(name, roster={})
    @name = name
    @roster = roster
    @@instances << self

  end

  def add_student(student_name, grade)
    # roster[grade] = [] if roster[grade] == nil
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def roster
    @roster
  end

  def grade(val)
    self.roster[val]
  end

  def sort
    self.roster.each do |grade, students|
      # binding.pry
      students.sort!
    end
  end


  def self.all
    @@instances.inspect
  end

end


# school = School.new("Flatiron")
# school.add_student("Yoan", 1)
# school.add_student("Ian", 1)
# school.add_student("Alex", 1)
#
# binding.pry
