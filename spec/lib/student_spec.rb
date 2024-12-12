require "student"

RSpec.describe Student do
  it "initializes with the correct attributes" do
    student = Student.new("Billy", "Joel", 14, 92, 88, 85)

    expect(student.first_name).to eq("Billy")
    expect(student.last_name).to eq("Joel")
    expect(student.age).to eq(14)
    expect(student.english).to eq(92)
    expect(student.math).to eq(88)
    expect(student.physics).to eq(85)
  end

  it "calculates the average grade correctly" do
    student = Student.new("Billy", "Joel", 14, 92, 88, 85)

    expect(student.average_grade).to eq(88)
  end
end
