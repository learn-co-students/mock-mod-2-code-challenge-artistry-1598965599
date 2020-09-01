class ArtistInstrumentsController < ApplicationController

    def new 
        @artist_instrument = ArtistInstrument.new()
    end

    def create 
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)
        if @artist_instrument.valid? 
            redirect_to @artist_instrument.artist 
        else
            redirect_to new_artist_instrument_path
        end
    end

    private

    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
