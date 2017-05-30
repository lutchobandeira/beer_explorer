class BeersController < ApplicationController
  def index
    @q = Beer.where.not(labels: nil).ransack(params[:q])
    @beers = @q.result.page(params[:page])
  end

  def show
    @beer = Beer.find(params[:id])
  end
end
