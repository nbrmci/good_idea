class ItemsController < ApplicationController

  def index
    @items = Item.all.order(id: "DESC")
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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: '便利が削除されました。是非またあなたの便利を教えてください。'
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :place, :describe, :user_id).merge(user_id: current_user.id)
  end

end