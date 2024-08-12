# ensures the rspec testing framework is available for use in this file
require 'rspec'
# allows the spec file to read the contents of the student file
require './lib/student'

# start of describe block; one per class/test file
describe Student do
  # start of it block for an individual test
  # the string should briefly describe in plain English what is being tested
  it 'is an instance of student' do
    # create a student object instance
    student = Student.new('Penelope')
    # assert that the student is from the Student class
    expect(student).to be_a Student
  end

  it 'has a name' do
    student = Student.new('Penelope')
    # assert that the student has a name property which matches what was passed in
    expect(student.name).to eq 'Penelope'
  end
end