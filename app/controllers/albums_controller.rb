class AlbumsController < ApplicationController
  # def index
  # end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    # @album_params = params.require(:album).permit(:artist_id, :instrument_id)
    # @album = Album.create(@album_params)

    @album = Album.create(album_params)
    redirect_to artist_path(@album.artist)
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def album_params
    params.require(:album).permit(:artist_id, :instrument_id)
  end
end
