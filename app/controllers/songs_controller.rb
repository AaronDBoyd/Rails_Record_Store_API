class SongsController < ApplicationController

  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
    json_response(@songs)
  end 

  def show

  end

  def create

  end

  def update

  end

  def destroy

  end

  private
  def song_params
    params.permit(:title, :lyrics)
  end

end