require "grader"
require "student"

RSpec.describe Grader do
  it "processes the grades correctly" do
    file = File.open("./files/grades.csv")
    grader = Grader.new(file)

    students = grader.process_grades

    expect(students.length).to eq(3)
    expect(students.first.first_name).to eq("Billy")
    expect(students.first.average_grade).to eq(88)
  end
end
