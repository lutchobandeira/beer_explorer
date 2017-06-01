class HomeController < ApplicationController
  def index
    @q = Beer.ransack(params[:q])
  end
end
