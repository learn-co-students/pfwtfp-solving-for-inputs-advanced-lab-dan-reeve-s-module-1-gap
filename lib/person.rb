require 'securerandom'

class Person
  attr_accessor :id, :first_name, :last_name, :email, :school, :courses

  def initialize(first_name, last_name, email, school)
    @id = SecureRandom.uuid
    @first_name = first_name
    @last_name = last_name
    @email = email
    @school = school
    @courses = []
  end

  def full_name
    first_name + ' ' + last_name
  end
end
