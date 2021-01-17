class FavoriteRelationshipsController < ApplicationController

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    redirect_back(fallback_location: root_url)
  end

  def destroy
    micropost = FavoriteRelationship.find(params[:id]).micropost
    current_user.unlike(micropost)
    redirect_back(fallback_location: root_url)
  end
  
end
