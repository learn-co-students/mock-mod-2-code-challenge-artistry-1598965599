class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    @session.save
    redirect_to artist_path(@session.artist)
  end

  def edit
    @session = Session.find(params[:id])
  end
  
  def update
    @session = Session.find(params[:id])
    @session.update(session_params)
    redirect_to artist_path(@session.artist)
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
  end

  private

  def session_params
    params.require(:session).permit(:artist_id, :instrument_id)
  end
end
