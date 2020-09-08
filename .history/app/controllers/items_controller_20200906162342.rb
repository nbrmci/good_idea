class ItemsController < ApplicationController

  def index
    @items = Item.all.order(:desc)
  end

  def new
    @item = Item.new
  end

end
