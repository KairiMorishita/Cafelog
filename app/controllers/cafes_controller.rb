class CafesController < ApplicationController
  def index
    @cafes = Cafe.paginate(page: params[:page])
  end
  
  def show
    @cafe = Cafe.find(params[:id])
  end
end