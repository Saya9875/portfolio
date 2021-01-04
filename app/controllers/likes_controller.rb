class LikesController < ApplicationController

  def create
    @micropost = Micropost.find(params[:micropost_id])
    @micropost.iine(current_user)
  end

  def destroy
    @micropost = Like.find(params[:id]).micropost
    @micropost.uniine(current_user)
  end
end
