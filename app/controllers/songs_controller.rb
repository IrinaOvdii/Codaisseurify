class SongsController < ApplicationController
  def show
     @artist = Artist.find(params[:id])
     @song = artist.songs.find(params[:id])
   end


end
