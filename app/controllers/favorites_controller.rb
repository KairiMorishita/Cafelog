class FavoritesController < ApplicationController
  
  def create
    user=current_user
    cafe=Cafe.find(params[:cafe_id])
    if Favorite.create(user_id: user.id,cafe_id:cafe.id)
      redirect_to cafe
    else
      redirect_to root_url
    end
  end

  def destroy
    user=current_user
    cafe=Cafe.find(params[:cafe_id])
    if favorite=Favorite.find_by(user_id: user.id,cafe_id:cafe.id)
      favorite.destroy
      redirect_to cafe
    else
      redirect_to root_url
    end
  end
end