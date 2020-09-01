class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end
    
    def show
        @artist= Artist.find(params[:id])
    end

    def new
        @artist= Artist.new
    end

    def create
        @artist= Artist.new(params.require(:artist).permit(:name, :instrument_ids))
        byebug
        @artist.save
        redirect_to artist_path(@artist)
    end
       
end
