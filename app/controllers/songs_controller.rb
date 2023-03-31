class SongsController < ApplicationController

  def index
    @songs = Song.all 
    render :index 
  end 
  
  

  def create 
    @song = Song.create(
      name: params[:name],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
    )
    render :show
  end 
  
end 
