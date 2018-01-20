class SongsController < ApplicationController
  before_action :set_artist


  def show
     @artist = Artist.find(params[:artist_id])
     @song = artist.songs.find(params[:artist_id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new
  end



  def set_artist
      @artist = Artist.find(params[:artist_id])
  end




end
