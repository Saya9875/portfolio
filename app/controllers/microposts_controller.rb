class MicropostsController < ApplicationController
  before_action :correct_user,   only: :destroy

  def index
    @microposts = Micropost.all.includes(:user)
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    @micropost.image.attach(params[:micropost][:image])
    if @micropost.save
      flash[:success] = "ツイートを送信しました"
      redirect_to root_url
    else
      @feed_items = current_user.feed.where(params[:id])
      render 'static_pages/home'
    end
  end

  def show
    @micropost = Micropost.find(params[:id])
    @replies = @micropost.replies
    @reply = current_user.replies.new
  end
  

  #request.referrerはDELETEリクエストが発行されたページに戻す
  def destroy
    @micropost.destroy
    flash[:success] = "ツイートを削除しました"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :image)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
