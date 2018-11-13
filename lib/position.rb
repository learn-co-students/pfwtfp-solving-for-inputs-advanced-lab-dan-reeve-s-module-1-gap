class Position
  attr_reader :title, :base_salary, :position_class, :manager_status

  def initialize(title, base_salary, position_class, manager_status = false)
    @title = title
    @base_salary = base_salary
    @position_class = position_class
    @manager_status = manager_status
    @courses = []
  end

  def change_base_salary(new_base_salary)
    @base_salary = new_base_salary
  end
end
