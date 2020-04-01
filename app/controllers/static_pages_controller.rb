class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @title = "お気に入りカフェ一覧"
      @user = current_user
      @cafes = @user.fav_cafes.paginate(page: params[:page])
    end
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
end
