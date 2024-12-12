require "csv"
require "student"

class Grader
  def initialize(file)
    @file = file
  end

  def process_grades
    students = []

    CSV.foreach(@file, headers: true) do |row|
      student = Student.new(
        row["first_name"],
        row["last_name"],
        row["age"].to_i,
        row["english"].to_i,
        row["math"].to_i,
        row["physics"].to_i
      )
      students << student
    end

    students
  end
end
