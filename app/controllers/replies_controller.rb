class RepliesController < ApplicationController

  def create
    #@micropost = Micropost.find(params[:micropost_id])
    @reply = current_user.replies.new(reply_params)
    #@micropost.reply
    if @reply.save
      flash[:success] = "返信を送信しました"
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @reply.destroy
    flash[:success] = "返信を削除しました"
    redirect_back(fallback_location: root_path)
  end

  private
  def reply_params
    params.require(:reply).permit(:reply_content, :micropost_id)
  end
end
