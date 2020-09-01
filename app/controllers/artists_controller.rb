class ArtistsController < ApplicationController

    def index
        #collecting all of the artists
        @artists = Artist.all
    end

  

    def show
        #showing an instance of an artist
        @artist = Artist.find(params[:id])

    end
    
end
