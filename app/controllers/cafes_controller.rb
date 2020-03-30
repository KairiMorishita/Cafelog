class CafesController < ApplicationController
  def index
    @cafes = Cafe.paginate(page: params[:page])
  end
  
  def show
    @cafe = Cafe.find(params[:id])
  end
  
  def favorite
    @user = current_user
    @cafes = @user.fav_cafes.paginate(page: params[:page])
  end
end