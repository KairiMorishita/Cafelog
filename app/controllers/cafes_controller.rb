class CafesController < ApplicationController
  def index
    @cafes = Cafe.paginate(page: params[:page])
  end
end