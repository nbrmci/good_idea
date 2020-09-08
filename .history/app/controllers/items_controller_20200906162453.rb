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

end