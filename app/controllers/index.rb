get '/' do
	albums = Album.all.sample(6)
	photos = Photo.all.sample(6)
  erb :index, :locals => {:photos => photos, :albums => photos}
  # ^^^ change albums local to point to albums var when implemented
end

post '/upload' do
	Photo.create(file: params["filename"])
	redirect to ('/photos')
end

get '/photos' do
	photos = Photo.all
	erb :photos, :locals => {:photos => photos}
end

get '/albums' do
	@albums = Album.all
	erb :albums
end

get '/albums/:album_id' do
	album = Album.find(params[:album_id])

end

get '/photos/test' do

end