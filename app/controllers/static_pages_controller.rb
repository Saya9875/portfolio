class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @user = User.find(params[:id])
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.where(params[:id])
      @users = current_user.following.where(params[:id])
      #@user.avatar.attach(params[:user][:avatar])
    end
  end

  #private

    #def user_params
      #params.require(:user).permit(:name, :profile, :email, :password, :password_confirmation, :avatar)
    #end
end
