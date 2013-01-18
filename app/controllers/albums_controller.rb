class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @album = Album.new(params[:album])
    if @album.save
      flash[:success] = "Album successfully created!"
      redirect_to artist_album_path(@artist, @album)
    else
      render "new"
    end

  end
end
