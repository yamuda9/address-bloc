class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :employed

  def initialize(first_name: first_name, last_name: last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def reverse_name
    "#{last_name}, #{first_name}"
  end


end

person = Person(first_name: "Bob", last_name: "Smith")
person = Person(first_name: "Jim", last_name: "Saunders", employed: true)
