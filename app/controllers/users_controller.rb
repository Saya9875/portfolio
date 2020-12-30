class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.where(params[:id])
  end
end