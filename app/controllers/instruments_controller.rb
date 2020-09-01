class InstrumentsController < ApplicationController

    def index
        @instruments = all_instruments 
    end
    
    def show 
        @instrument = find_instrument_id 
    end 
    
    def new
        @instrument = Instrument.new 
    end 

    def create
        @instrument = Instrument.new(post_params(:name))
        @instrument.save 
        redirect_to_instrument_path(@instrument)
    end 
    
    def edit 
        @instrument = find_instrument_id 
    end 

    def update 
        @instrument = find_instrument_id
        @instrument.update(post_params(:name))
        redirect_to_instrument_path(@instrument)
    end 

    private 
    def all_instruments
        Instrument.all
    end 

    def find_instrument_id
        Instrument.find(params[:id])
    end 

    def post_params(*args)
        params.require(:instrument).permit(*args)
    end 

end
