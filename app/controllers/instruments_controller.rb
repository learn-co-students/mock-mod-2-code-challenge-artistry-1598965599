class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end

    def show
        @instruments = Instrument.find([:id])
    end

    def new
        @instruments = Instrument.new
    end

    

end
