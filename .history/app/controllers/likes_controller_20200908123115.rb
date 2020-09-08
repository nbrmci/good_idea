class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(item_id: params[:item_id])
    item = Item.find(params[:item_id])
    like = Like.create(user_id: user.id, item_id: item.id)

    if like.save
      redirect_to items_path, notice: 'いいねしました！'
    else
      redirect_to items_path, notice: 'いいねできませんでした'
    end

  end

  def destroy
    @like = Like.find_by(item_id: params[:item_id],user_id: current_user.id)
  end

  private

  def set_like
    @item = Item.find(params[:item_id])
  end

end