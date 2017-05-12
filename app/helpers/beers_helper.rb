module BeersHelper
  def display_info(info)
    info ? info : t("beers.show.no_info")
  end

  def display_food_pairings(beer)
    return unless beer.food_pairings.present?
    render(partial: "food_pairings", locals: { beer: beer })
  end

  def glass_image(glass)
    image_tag("glassware/#{glass.downcase}")
  end
end
