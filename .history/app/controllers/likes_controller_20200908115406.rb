class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    user = current_user
    item = Item.find(params[:item_id])
    like = Like.create(user_id: user.id, item_id: item.id)

    if like.save
      redirect_to items_path, notice: 'いいねしました！'
    else
      redirect_to items_path, notice: 'いいねできませんでした'
    end

  end

  def destroy
    user = current_user
    item = Item.find(params[:item_id])
    like = Like.delete(user_id: user.id, item_id: item.id)
    like.destroy
    redirect_to items_path, notice: 'いいねが削除されました'
  end

  private

  def set_like
    @item = Item.find(params[:item_id])
  end

end