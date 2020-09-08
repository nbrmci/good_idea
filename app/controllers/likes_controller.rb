class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(item_id: params[:item_id])

    if like.save
      redirect_to items_path, notice: 'いいねしました！'
    else
      redirect_to items_path, notice: 'いいねできませんでした'
    end

  end

  def destroy
    @like = Like.find_by(item_id: params[:item_id],user_id: current_user.id)
    @like.destroy
    redirect_to items_path, notice: 'いいねを取り消しました'
  end

end