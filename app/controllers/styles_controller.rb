class StylesController < ApplicationController
  def filter
    @styles = Style.filter(params[:srm_range], params[:ibu_range], params[:abv_range])
  end
end
