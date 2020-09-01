class ArtistInstrumentsController < ApplicationController

    def new
        @artistinstrument = ArtistInstrument.new
        @instruments = Instrument.all
    end
end
