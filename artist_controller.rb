require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/artist')
require_relative('./models/album')

get '/artist/new' do
  erb( :new)
end  

post '/artist' do
  @artist = Artist.new(params)
  @artist.save()
  erb( :create)
end  

get '/artist' do
  @artists = Artist.all()
  erb( :index )
end

get '/artist/:id' do
  @artist = Artist.find(params[:id])
  erb( :show )
end  

get '/artist/:id/edit' do
  @artist = Artist.find( params[:id] )
  erb( :edit )
end 

post '/artist/:id' do
  @artist = Artist.update(params)
  redirect to("/artist/#{params['id']}")
end  








