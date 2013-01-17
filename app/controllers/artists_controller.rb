class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
    @albums = @artist.albums
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      flash[:success] = "Artist added succesfully"
      redirect_to artists_path
    else
      render 'new'
    end
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      flash[:success] = "Artist updated successfully"
      redirect_to artists_path
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    
    if @artist.destroy
      redirect_to artists_path
    end
  end

end
