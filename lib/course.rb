class Course
  attr_accessor :students
  attr_reader :teacher, :title

  def initialize(title, subject, teacher)
    @title = title
    @subject = subject
    @teacher = teacher
    @students = {}
  end

  def add_student(student)
    students[student] = 100
  end

  def change_grade(student, new_grade)
    students[student] = new_grade
  end
end
