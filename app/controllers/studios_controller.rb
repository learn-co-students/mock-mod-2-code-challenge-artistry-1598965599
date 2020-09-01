class StudiosController < ApplicationController

    def index
        @studios = Studio.all
    end 

    def show 
        @studio = Studio.find(parmas[:id])
    end 

    def new 
        @studio = Studio.new
        @artist = Artist.all
    end 

    def create
        @studio = Studio.create(studio_params)
        artist = Artist.find(params[:studio][:artist_id])
        redirect_to artist_path(artist)
    end 

    private 
    def studio_params
        params.require(:studio).permit(:artist_id, :instrument_id)
    end 

end
