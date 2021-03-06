require_relative "../models/person"

RSpec.describe Person do
  it "should respond to first name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example).to respond_to(:first_name)
  end

  it "should respond to last name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example).to respond_to(:last_name)
  end

  it "should return the first name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example.first_name).to eq("John")
  end

  it "should return the last name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example.last_name).to eq("Smith")
  end

  it "should return the full name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example.full_name).to eq("John Smith")
  end

  it "should return the reverse of the full name" do
    example = Person.new(first_name: "John", last_name: "Smith")
    expect(example.reverse_name).to eq("Smith, John")
  end

  it "should return the employment status" do
    example = Person.new(first_name: "John", last_name: "Smith", employed: true)
    example.employed = true
    expect(example.employed).to eq(true)
  end

  it "should return the employment status" do
    example = Person.new(first_name: "John", last_name: "Smith")
    example.employed = false
    expect(example.employed).to eq(false)
  end
end
