class CommentsController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(set_params)
    redirect_to album_path(@album)
  end

  def destroy
    segms = params[:album_id].split "/"
    @album = Album.find(segms.first)
    @comment = @album.comments.find(segms.last)

    @comment.destroy
    redirect_to album_path(@album)
  end

  def set_params
    params.expect(comment: [ :name, :text ])
  end
end
