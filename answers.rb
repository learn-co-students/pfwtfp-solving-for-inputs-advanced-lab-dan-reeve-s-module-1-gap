require_relative './lib/registrar.rb'
require_relative './lib/course.rb'
require_relative './lib/student.rb'

def create_school
  # Return a new instance of school with a name and adress of your choosing
end

def set_up_a_course
  # Use the method above to create a school
  # Use this new School instance to:
  # - Create a position
  # - Hire a teacher to that position
  # - Create a course for the teacher to teach
  # Return instance of school
end

def create_five_students
  # Use create_school to create an instance of School
  # Add five instances of Student to the new school using the hashes of data above
  # Don't enroll students in any classes, but make sure they're on the Registrar!
  # Return an array of the *full names* of each student
end

def enroll_a_student
  # Using the school instances you created in set_up_a_course
  # Create a student and enroll the student in your course
  # Return the newly updated instance of School
end

def apply_grade
  # Using the course and students set up in `enroll_students`, change the
  # students grade to 95
  # Return the instance of School
end
