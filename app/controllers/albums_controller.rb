class AlbumsController < ApplicationController
def index
    @albums - all_albums 
end 

def show
    @album = find_album_id 
    @artist = @album.artist
    @instrument = @album.instrument
end 

def new
    @album = @album.new
end 

def create 
    @album = Album.new(post_params(:name, :artist_id, :instrument_id))
    @album.save
    redirect_to_album_path(@album)
end 

def edit 
    @album = find_album_id
    @album.update(post_params(:name, :artist_id, instrument_id))
    redirect_to_album_path(@album)
end 

private 

def all_albums
    Albums.all 
end 

def find_album_id 
    Album.find(params[:id])
end 

def post_params(*args)
    params.require(:album).permit(*args)
end
end 
