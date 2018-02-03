class HomesController < ApplicationController
before_action :sign_in_required, only: [:show,:user]
  # ユーザー周りのコントローラー
  def index
  end

  def show
  end

  # ユーザー情報
  def user
    @user = User.find_by(id: params[:id])
  end

  def myproduct
    @user = current_user
    @furnitures = Furniture.where(user_id: @user.id)
  end

  def favorites
    @user = current_user
    @favorites = Favorite.where(user_id: @user.id)
  end

  def carts
    @user = current_user
    @carts = Cart.where(user_id: @user.id)
    @total_price = 0
  end


end

