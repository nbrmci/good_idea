class ItemsController < ApplicationController
  def index
    @items = Item.all.order(:desc)
  end
end
