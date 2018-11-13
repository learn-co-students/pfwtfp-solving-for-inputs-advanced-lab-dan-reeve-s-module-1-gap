require_relative 'person.rb'

class Teacher < Person
  attr_accessor :position

  def initialize(first_name, last_name, email, school, position)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @school = school
    @position = position
  end

  def create_course(title, subject)
    school.create_course(title, subject, self) if position.manager_status
  end

  def change_grade(course, student, new_grade)
    course.change_grade(student, new_grade)
  end

  def list_students
    courses.map { |course| }
  end
end
