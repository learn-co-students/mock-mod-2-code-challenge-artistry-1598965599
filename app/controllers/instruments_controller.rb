class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end
    
    def show
        @instrument = Instrument(params[:id])

    end
    

end
