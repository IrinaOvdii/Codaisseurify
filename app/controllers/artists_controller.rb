class ArtistsController < ApplicationController

  def index
  	  @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @photos = @artist.photos
  end

  def new
    @artist = @artist.new
  end

  def create
    @artist = artists.build(artist_params)

      if @artist.save
        image_params.each do |image|
          @artist.photos.create(image: image)
        end

      redirect_to edit_artist_path(@artist), notice: "Artist successfully created"
      else
        render :new
      end
  end

  def edit
      @photos = @artist.photos
  end

  def update
    if @artist.update(artist_params)
      image_params.each do |image|
        @artist.photos.create(image: image)
    end
      redirect_to edit_artist_path(@artist), notice: "Artist updated"
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to @artist, notice: "Artist Deleted!"
  end

  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end

  def image_params
  params[:images].present? ? params.require(:images) : []
end


end
