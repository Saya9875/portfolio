class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #@user.avatar.attach(params[:avatar])
    @microposts = @user.microposts.where(params[:id])
  end

  private

    def user_params
      params.require(:user).permit(:name, :profile, :email, :password,
                                  :password_confirmation, :avatar)
    end
end