require 'spec_helper'

describe 'Unfamiliar Object Oriented Code' do
  describe 'answers.rb' do
    it '`create_school` returns an instance of School' do
      expect(create_school).to be_a(School)

      expect(School).to receive(:new)
      create_school
    end

    it '`set_up_a_course`' do
      new_school = set_up_a_course

      expect(new_school.positions.keys.length).to eq(1)
      expect(new_school.teachers.length).to eq(1)
      expect(new_school.courses.length).to eq(1)

      expect(new_school.courses[new_school.courses.keys[0]].teacher).to eq(new_school.teachers[0])
    end

    it '`create_five_students`' do
      student_names = [
        { first_name: 'Peter', last_name: 'Ma', email: 'zelda@yahoo.com' },
        { first_name: 'Ben', last_name: 'Donna', email: 'photocopies@geocities.com' },
        { first_name: 'John', last_name: 'Lombardo', email: 'batswinger@aol.com' },
        { first_name: 'AJ', last_name: "O'Reilly", email: 'trackwalker@earthlink.com' },
        { first_name: 'Adam', last_name: 'Osborne', email: 'badninja@hotmail.com' }
      ]

      expect(create_five_students).to contain_exactly('Peter Ma', 'Ben Donna', 'John Lombardo', "AJ O'Reilly", 'Adam Osborne')
    end

    it '`enroll_a_student`' do
      school = enroll_a_student

      expect(school.courses.length).to eq(1)
      expect(school.courses[school.courses.keys[0]].students.keys.length).to eq(1)
    end

    it '`apply_grade`' do
      school = apply_grade

      expect(school.courses[school.courses.keys[0]].students[school.registrar.students[0]]).to eq(95)
    end
  end
end
