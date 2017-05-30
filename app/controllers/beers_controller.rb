class BeersController < ApplicationController
  def index
    @beers = Beer.where.not(labels: nil).page(params[:page])
  end

  def show
    @beer = Beer.find(params[:id])
  end
end
