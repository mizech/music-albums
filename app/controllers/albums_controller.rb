class AlbumsController < ApplicationController
  before_action :set_album, only: [ :show, :edit, :update, :destroy ]
  def index
    @albums = Album.all
  end

  def show
    @comment = Comment.new
    @comment.album_id = @album.id
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to @album
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to albums_path, notice: "Album was successfully created."
      flash[:notice] = "Album has become created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy

    redirect_to albums_path, notice: "Album has become deleted."
  end

  private

  def album_params
    params.expect(album: [ :name, :price, :artist_id ])
  end

  def set_album
    @album = Album.find(params[:id])
  end
end
