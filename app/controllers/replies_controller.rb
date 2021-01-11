class RepliesController < ApplicationController

  def create
    #@micropost = Micropost.find(params[:micropost_id])
    @reply = current_user.replies.new(reply_params)
    #@micropost.reply
    if @reply.save
      flash[:success] = "返信を送信しました"
      redirect_back(fallback_location: root_path)
    else
      flash[:message] = "失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def reply_params
    params.require(:reply).permit(:reply_content, :micropost_id)
  end
end
