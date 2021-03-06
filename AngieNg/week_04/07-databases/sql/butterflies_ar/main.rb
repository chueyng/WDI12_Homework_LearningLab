require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDERR)    #Standard error logger

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

class Butterfly < ActiveRecord::Base
  belongs_to :plant
end

class Plant < ActiveRecord::Base
  has_many :butterflies
end

after do
  ActiveRecord::Base.connection.close   #close connection for every "get"'s end, else it will result as timeout as too many execution working out. Joel mentioned it will not apply in Real life. 
end

get '/pry' do
  binding.pry
end

get '/' do
  erb :home
end

# Index page for all butterflies
get '/butterflies' do
  @butterflies = Butterfly.all
  
  erb :butterflies_index
end

# Form to add a new butterfly
get '/butterflies/new' do
  erb :butterflies_new
end

# Insert a new butterfly into the database -- create
post '/butterflies' do
  butterfly = Butterfly.new
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]

  butterfly.save

  redirect to('/butterflies')
end


# Show page for a Butterfly-- READ
get '/butterflies/:id' do
  @butterfly = Butterfly.find params[:id]
  erb :butterflies_show
end

# Delete a butterfly from the database -- DELETE
get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to('/butterflies')
end

#Form to edit an existing butterfly
get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  erb :butterflies_edit
end

#Amend a butterfly in the database -- UPDATE
post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.family = params[:family]
  butterfly.image = params[:image]
  butterfly.plant_id = params[:plant_id]  

  butterfly.save

  redirect to("/butterflies/#{params[:id]}")
end


# Plant CRUD
get '/plants' do
  @plants = Plant.all 
  erb :plants_index
end

get '/plants/new' do

  erb :plants_new
end 

post '/plants' do
  plant = Plant.new
  plant.name = params[:name]
  plant.image = params[:image]

  plant.save

  redirect to('/plants')
end


# Show page for a Butterfly-- READ
get '/plants/:id' do
  @plant = Plant.find params[:id]
  erb :plants_show
end


get '/plants/:id/delete' do
  plant = Plant.find params[:id]
  plant.destroy

  redirect to('/plants')
end

get '/plants/:id/edit' do
  @plant = Plant.find params[:id]
  erb :plants_edit
end

post '/plants/:id' do
  plant = Plant.find params[:id]
  plant.name = params[:name]
  plant.image = params[:image]

  plant.save

  redirect to ("/plants/#{params[:id]}")
end
