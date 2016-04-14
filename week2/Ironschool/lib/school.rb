#
class Student
  attr_reader :name, :age, :experience, :email

  def initialize(name, age, experience, email)
    @name = name
    @age = age
    @experience = experience
    @email = email
  end
end
