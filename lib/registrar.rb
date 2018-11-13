require_relative 'student.rb'
require_relative 'course.rb'

class Registrar
  attr_reader :school, :students, :courses

  def initialize(school)
    @school = school
    @students = []
  end

  def enroll_student(first_name, last_name, email)
    @students << Student.new(first_name, last_name, email, @school)
  end

  def add_student_to_course(student, course)
    student.add_course(course)
    course.add_student(student)
  end
end
