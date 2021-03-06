class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    json_response(@albums)
  end

  def show
    @album = Album.find(params[:id])
    json_response(@album)
  end

  def create
    @album = Album.create!(album_params)
    json_response(@album, :created)
  end

  def update
    @album = Album.find(params[:id])
    @album.update!(album_params)
    # added json response instead of message
    json_response(@album)
  end

  def destroy 
    @album = Album.find(params[:id])
    if @album.destroy
      render status: 200, json: {
        message: "This album has been destroyed successfully."
      }
    end
  end

  private
  
  def album_params
    params.permit(:name, :genre, :year)
  end
end