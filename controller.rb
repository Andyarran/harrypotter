require( 'sinatra')
require( 'sinatra/contrib/all')
require( 'pry')

require_relative('./models/student.rb')
require_relative('./models/house.rb')

get '/hogwarts/students' do
  @students = Student.all
  @houses = House.all
  erb(:students)
end

post '/hogwarts/students' do
  @student = Student.new( params )
  @student.save
  redirect to '/hogwarts/students'
end

get '/hogwarts' do
  erb(:hogwarts)
end

get '/hogwarts/about' do
  erb(:about)
end

get '/hogwarts/contact' do
  erb(:contact)
end

get '/hogwarts/tour' do
  erb(:tour)
end

get '/hogwarts/houses' do
  erb(:houses)
end
