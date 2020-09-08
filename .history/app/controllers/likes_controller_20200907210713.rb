class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    user = current_user
    item = Item.find(params[:id])
    like = Like.create(user_id: user.id, item_id: item.id)
  end

end