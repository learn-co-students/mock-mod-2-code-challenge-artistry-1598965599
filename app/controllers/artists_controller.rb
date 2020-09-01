class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end
    
    def new
        @errors = flash[:errors]
        @artist = Artist.new
    end

    def create
        artist_params = params.require(:artist).permit(:name, :age, :title)
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_page(@artist)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    def show
        @artist = Artist.find(params[:id])
        @artist_instruments = ArtistInstrument.all
    end
end
