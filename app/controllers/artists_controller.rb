class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        # byebug
        @artist = Artist.new(artist_params)
        
        if @artist.save
            redirect_to artist_path(@artist)
        else
            render 'new'
        end
    end

    def show
        @artist = Artist.find(params[:id])
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end

    
end
