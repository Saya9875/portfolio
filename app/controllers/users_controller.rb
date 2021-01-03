class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@user.avatar.attach(params[:avatar])
    @microposts = @user.microposts.where(params[:id])
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.where(params[:id])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.where(params[:id])
    render 'show_follow'
  end

  private

    def user_params
      params.require(:user).permit(:name, :profile, :email, :password,
                                  :password_confirmation, :avatar)
    end
end