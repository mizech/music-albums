class CommentsController < ApplicationController
  def create
    @album = Album.find(params[:album_id])
    @comment = @album.comments.create(set_params)
    redirect_to album_path(@album)
  end

  def set_params
    params.expect(comment: [ :name, :text ])
  end
end
