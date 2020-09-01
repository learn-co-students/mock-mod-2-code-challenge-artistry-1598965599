class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist =Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end
    
    def create
        @artist = Artist.create(artist_param)
        byebug 

        if artist_param[:id]
            redirect_to artist_path(@artist)
        else
           redirect_to new_artist_path
        end
    end

    private 
    def artist_param
        params.require(:artist).permit(:name,:title,:age)
    end
end
