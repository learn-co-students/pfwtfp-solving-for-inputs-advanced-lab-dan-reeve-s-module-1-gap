require_relative './lib/registrar.rb'
require_relative './lib/course.rb'
require_relative './lib/student.rb'

def create_school
  # Return a new instance of school with a name and adress of your choosing
  School.new( 'Its lit', '123 Street')
end

def set_up_a_course
  # Use the method above to create a school
  # Use this new School instance to:
  # - Create a position
  # - Hire a teacher to that position
  # - Create a course for the teacher to teach
  # Return instance of school
  school = create_school

  posit = school.create_position('Chief', 50_000, 'B', false)
  teacher = school.hire_teacher('Dean', 'Harwain-Gedanski', 'theDeananator@msn.com', posit)[0]
  course = school.create_course('Old English Syntax', 'English', teacher)
  school
end

def create_five_students
  # Use create_school to create an instance of School
  # Add five instances of Student to the new school using the hashes of data above
  # Don't enroll students in any classes, but make sure they're on the Registrar!
  # Return an array of the *full names* of each student
  student_names = [
    { first_name: 'Peter', last_name: 'Ma', email: 'zelda@yahoo.com' },
    { first_name: 'Ben', last_name: 'Donna', email: 'photocopies@geocities.com' },
    { first_name: 'John', last_name: 'Lombardo', email: 'batswinger@aol.com' },
    { first_name: 'AJ', last_name: "O'Reilly", email: 'trackwalker@earthlink.com' },
    { first_name: 'Adam', last_name: 'Osborne', email: 'badninja@hotmail.com' }
  ]

  school = create_school
  students = []
  student_names.each do |object, _index|
    school.registrar.enroll_student(object[:first_name], object[:last_name], object[:email])
  end

  school.registrar.students.map(&:full_name)

end

def enroll_a_student
  # Using the school instances you created in set_up_a_course
  # Create a student and enroll the student in your course
  # Return the newly updated instance of School
  school = set_up_a_course
  school.registrar.enroll_student('Steve', 'Buschemi', 'HelloFellowKids@cool.com')
  school.registrar.add_student_to_course(school.registrar.students[0], school.courses[school.courses.keys[0]])

  school

end

def apply_grade
  # Using the course and students set up in `enroll_students`, change the
  # students grade to 95
  # Return the instance of School
  school = enroll_a_student

  school.courses[school.courses.keys[0]].change_grade(school.registrar.students[0], 95)

  school
end
