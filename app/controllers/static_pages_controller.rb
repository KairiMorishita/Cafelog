class StaticPagesController < ApplicationController
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
end
