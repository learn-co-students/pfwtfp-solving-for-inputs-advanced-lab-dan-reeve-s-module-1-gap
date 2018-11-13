require_relative 'person.rb'

class Student < Person
  def join_course(course)
    school.registrar.enroll_student(self, course)
  end

  def add_course(course)
    courses << course
  end

  def list_teachers
    courses.map(&:teacher)
  end
end
