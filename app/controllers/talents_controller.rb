class TalentsController < ApplicationController

    def new
        @talent=Talent.new
    end

    def create
        @talent=Talent.new(params.require(:talent).permit(:artist_id, :instrument_id))
        @talent.save
        redirect_to artist_path(@talent.artist)
    end
end
