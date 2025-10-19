class CommentsController < ApplicationController
  before_action :set_attributes, only: [ :edit, :destroy ]
  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(set_params)
    redirect_to album_path(@album)
  end

  def edit
  end

  def update
    @album = Album.find(params[:album_id])
    @comment = @album.comments.find(params[:id])

    if @comment.update(set_params)
      redirect_to album_path(@album)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    redirect_to album_path(@album)
  end

  def set_params
    params.expect(comment: [ :name, :text ])
  end

  def set_attributes
    segms = params[:album_id].split "/"
    @album = Album.find(segms.first)
    @comment = @album.comments.find(segms.last)
  end
end
