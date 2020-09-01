class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show 
        @artist = find_artist_id 
    end 

    def new 
        @artist = Artist.new 
    end 
    
    def create 
        @artist = @Artist.new(post_params(:age, :name, :title))
        @artist.save 
        redirect_to_artist_path(@artist)
    end

    def edit 
        @artist = find_artist_id
    end 

    def update 
        @artist = find_artist_id 
        @artist.update(post_params(:name, :location))
    end 

    private 

    def_all artist
        Artist.all 
    end 
    
    def find_artist_id
        Artist.find(params[:id])
    end 

    def post_params(*args)
        params.require(artist).permit(*args)
    end 
end
