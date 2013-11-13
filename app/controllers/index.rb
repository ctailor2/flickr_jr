get '/' do
  erb :index
end

post '/upload' do
	Photo.create(file: params["filename"])
	redirect to ('/photos')
end

get '/photos' do
	@photos = Photo.all
	erb :photos
end