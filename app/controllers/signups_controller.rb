class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_param)
        redirect_to artist_path(@signup.artist)
    end

    private
    def signup_param
        params.require(:signup).permit(:artist_id,:instrument_id)
    end
end
