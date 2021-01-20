class ItemsController < ApplicationController
  before_action :admin_user, only: [:create, :edit, :destroy]

  def index
    @items = Item.all
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    @item.item_image.attach(params[:item][:item_image])
    if @item.save
      redirect_back(fallback_location: root_path)
      flash[:success] = "アイテムが作成されました"
    else
      flash[:message] = "失敗しました"
    end
  end

  def edit
    item = Item.find_by(params[:id])
  end
  

  def show
    @item = Item.find(params[:id])
    @review = Review.new
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "アイテムを削除しました"
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :item_image_name, :item_image)
  end

end
