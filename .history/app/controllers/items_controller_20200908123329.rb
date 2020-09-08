class ItemsController < ApplicationController

  def index
    @items = Item.all.order(id: "DESC")
    @like = Like.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: '便利の共有ありがとうございます！'
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to items_path, notice: '便利が編集されました。共有の編集ありがとうございます！'
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: '便利が削除されました。またあなたの便利をお待ちしています。'
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :place, :describe, :user_id).merge(user_id: current_user.id)
  end

end