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


    def show 
      @song = Song.find_by(id: params[:id])
      render :show 
    end 

    
    def update
      @song = Song.find_by(jd: params[id])
      song.update(
        name: params[:name] || song.name, 
        artist: params[:artist] || song.artist, 
        album: params[:album] || song.album,    
        year: params[:year] || song.year   
      
         )

        render :show
    end 
  
  def destroy
    @song = Song.find_by(id: params[:id])
    @photo.destroy
    render json: { message: "Photo destroyed succesfully" }
  end  


end 