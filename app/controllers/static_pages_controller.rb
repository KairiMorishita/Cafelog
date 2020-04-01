class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:home]

  def home
    @title = "お気に入りカフェ一覧"
    @user = current_user
    @cafes = @user.fav_cafes.paginate(page: params[:page])
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
#正しいユーザーかどうか確認
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

# ログイン済みユーザーかどうか確認
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "ログインして下さい"
      redirect_to login_url
    end
  end
end
