require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

get '/hogwarts/students' do
  @students = Student.all
  erb( :index )
end

get '/hogwarts/students/new' do
  @houses = House.all
  erb ( :new )
end

post '/hogwarts/students' do
  @new_student = Student.new(params)
  @new_student.save
  erb ( :create )
end
