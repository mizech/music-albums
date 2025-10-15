class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to albums_path, notice: "Album was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def album_params
    params.expect(album: [ :name, :price, :artist_id ])
  end
end
