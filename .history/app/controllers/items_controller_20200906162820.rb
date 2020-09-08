class ItemsController < ApplicationController

  def index
    @items = Item.all.order(:desc)
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :place, :describe, :user_id).merge(user_id: current_user.id)
  end
  
end