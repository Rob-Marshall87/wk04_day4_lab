require_relative('../db/sql_runner')
require('pry-byebug')

class House
  attr_reader :name, :logo, :id

  def initialize(options)
    @name = options['name']
    @logo = options['logo']
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = 'INSERT INTO houses (name, logo) VALUES ($1, $2)
    RETURNING id'
    values = [@name, @logo]
    new_house = SqlRunner.run(sql,values)
    @id = new_house.first['id'].to_i
  end

  def self.all
    sql = 'SELECT * FROM houses'
    houses = SqlRunner.run(sql)
    return houses.map { |house| House.new(house)  }
  end

  def self.find_by_id(id)
    sql = 'SELECT * FROM houses WHERE id = $1'
    values = [id]
    house= SqlRunner.run(sql, values).first
    return House.new(house)
  end
# binding.pry
end
