class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def artist_params
    params.expect(artist: [ :name, :years_active, :members ])
  end
end
