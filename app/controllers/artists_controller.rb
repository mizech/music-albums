class ArtistsController < ApplicationController
  before_action(:find_artist, only: [ :show, :edit, :update ])
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to @artist
    else
      render :edit, status: :unprocessable_entity
    end
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

  private
  def artist_params
    params.expect(artist: [ :name, :years_active, :members ])
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
