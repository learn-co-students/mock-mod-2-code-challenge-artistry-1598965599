class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artist =Artist.find(params[:id])
    end

    def new
        @errors = flash[:errors]
        @artist = Artist.new
    end
    
    def create
        @artist = Artist.create(artist_param)
        
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    private
    def artist_param
        params.require(:artist).permit(:name,:title,:age)
    end
end
