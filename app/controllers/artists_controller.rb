class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show 
        @artist = Artist.find(params[:id])
    end

    def new 
        @artist = Artist.new()
    end

    def create 
        @artist = Artist.create(artist_params)
        byebug
        if @artist.valid? 
            redirect_to @artist
        else 
            redirect_to new_artist_path 
        end
    end

    private 
    
    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end

    
end
