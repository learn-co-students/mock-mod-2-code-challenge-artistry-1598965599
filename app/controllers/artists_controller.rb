class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artists = Artist.find(artists[:id])
    end

    def new
        @artists = Artist.new
    end

    # def create({:Artist params[:]})

    # end

    
end
