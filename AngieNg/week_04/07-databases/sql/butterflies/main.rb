require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'


get '/' do
  erb :home
end

# Index page for all butterflies
get '/butterflies' do
  @butterflies = query_db 'SELECT * FROM butterflies'
  
  erb :butterflies_index
end

# Form to add a new butterfly
get '/butterflies/new' do
  erb :butterflies_new
end

# Insert a new butterfly into the database -- create
post '/butterflies' do
  query = "INSERT INTO butterflies (name, family, image) VALUES ('#{params[:name]}', '#{params[:family]}', '#{params[:image]}')"
  query_db(query)

  redirect to('/butterflies')
end


# Show page for a Butterfly-- READ
get '/butterflies/:id' do
  # "Butterfly number #{params[:id]} coming soon"
  ### Originally db setup
  # db = SQLite3::Database.new 'butterflies.db'
  # db.results_as_hash = true
  # @butterflies = db.execute "SELECT * FROM butterflies WHERE id=#{params[:id]}"

  @butterflies = query_db "SELECT * FROM butterflies WHERE id=#{params[:id]}"
  # @butterflies.inspect  #return string
  @butterfly = @butterflies.first  # Strip off the array

  erb :butterflies_show
end

# Delete a butterfly from the database -- DELETE
get '/butterflies/:id/delete' do
  query_db "DELETE FROM butterflies WHERE id=#{params[:id]}"
  redirect to('/butterflies')
end

#Form to edit an existing butterfly
get '/butterflies/:id/edit' do
  butterflies = query_db "SELECT * FROM butterflies WHERE id=#{params[:id]}"
  @butterfly = butterflies.first  #strip off the array

  erb :butterflies_edit
end

#Amend a butterfly in the database -- UPDATE
post '/butterflies/:id' do
  query = "UPDATE butterflies SET name='#{params[:name]}', family='#{params[:family]}', image='#{params[:image]}' WHERE id=#{params['id']}"
  query_db(query)

  redirect to("/butterflies/#{params[:id]}")

end

# Database connection
def query_db(sql)
  db = SQLite3::Database.new 'butterflies.db'
  db.results_as_hash = true

  puts sql      #printing in terminal
  result = db.execute sql
  result
end
