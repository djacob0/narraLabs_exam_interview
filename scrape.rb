require "grader"
require "terminal-table"

file = File.open("./files/grades.csv")
grader = Grader.new(file)

students = grader.process_grades

table = Terminal::Table.new do |t|
  t << ["Name", "English", "Math", "Physics", "Average"]
  t.add_separator
  students.each do |student|
    t << [
      "#{student.first_name} #{student.last_name}",
      student.english,
      student.math,
      student.physics,
      student.average_grade.round(2)
    ]
  end
end

puts table
