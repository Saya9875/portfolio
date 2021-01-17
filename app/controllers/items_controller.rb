class ItemsController < ApplicationController
  before_action :admin_user, only: [:new, :create, :destroy]

  def index
    @items = Item.all
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_back(fallback_location: root_path)
      flash[:success] = "アイテムが作成されました"
    else
      flash[:message] = "失敗しました"
    end
  end

  def show
  end

  def destroy
    @item.destroy
    flash[:success] = "アイテムーを削除しました"
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
