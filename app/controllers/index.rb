get '/' do
  erb :index
end

post '/upload' do
	Photo.create(file: params["filename"])
	redirect to ('/')
end

get '/photos' do
	@photos = Photo.all
	erb :photos
end