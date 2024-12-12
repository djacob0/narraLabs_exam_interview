class Student
  attr_reader :first_name, :last_name, :age, :english, :math, :physics

  def initialize(first_name, last_name, age, english, math, physics)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @english = english
    @math = math
    @physics = physics
  end

  def average_grade

    ((@english + @math + @physics) / 3.0)

  end
end
