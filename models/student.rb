require_relative('../db/sql_runner.rb')
require_relative('./house.rb')
require('pry')

class Student
attr_reader :first_name, :last_name, :house, :age, :id

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house = options['house'].to_i
    @age = options['age'].to_i
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = 'INSERT INTO students (first_name, last_name, house, age)
    VALUES ($1, $2, $3, $4) RETURNING id'
    values = [@first_name, @last_name, @house, @age]
    student_id = SqlRunner.run(sql, values).first
    @id = student_id['id'].to_i
  end

  def self.all
    sql = 'SELECT * FROM students'
    all_students = SqlRunner.run(sql)
    return all_students.map { |student| Student.new(student) }
  end

  def self.find_by_id(id)
    sql = 'SELECT * FROM students WHERE id = $1'
    values = [id]
    student_hash = SqlRunner.run(sql,values).first
    return Student.new(student_hash)
  end

  def get_house
    sql = 'SELECT * FROM houses WHERE id = $1'
    values = [@house]
    house_hash = SqlRunner.run(sql,values).first
    house  = House.new(house_hash)
    return house.name
  end

# binding.pry
end
