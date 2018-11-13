class School
  attr_accessor :name_of_school, :address, :courses, :positions, :teachers, :registrar

  def initialize(name_of_school, address)
    @name_of_school = name_of_school
    @address = address
    @registrar = Registrar.new(self)
    @courses = {}
    @positions = {}
    @teachers = []
  end

  def create_course(title, subject, teacher)
    courses[title] = Course.new(title, subject, teacher)
  end

  def create_position(title, base_salary, position_class, manager_status)
    positions[title] = Position.new(title, base_salary, position_class, manager_status)
  end

  def hire_teacher(first_name, last_name, email, position)
    teachers << Teacher.new(first_name, last_name, email, self, position)
  end

  def find_teacher_by_title(search_string)
    positions.select { |position| position.title.match(search_string) }
  end

  def find_teacher_by_name(search_string)
    teachers.select { |teacher| teacher.full_name.match(search_string) }
  end

  def find_teacher_by_position(position)
    teachers.select { |teacher| teacher.position == position }
  end

  def find_course_by_title(title)
    courses[title]
  end

  def find_course_by_teacher(teacher)
    courses.select do |_key, course|
      course.teacher == teacher
    end
  end
end
