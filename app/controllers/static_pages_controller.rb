class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.where(params[:id])
      @user.avatar.attach(params[:user][:avatar])
    end
  end
end
