module BeersHelper
  def display_brewery_chips(beer)
    return if beer.breweries.blank?
    render(partial: "brewery_chips", locals: { beer: beer })
  end

  def display_info(info)
    info ? info : t("beers.show.no_info")
  end

  def display_description(beer)
    return unless beer.description.present?
    render(partial: "description", locals: { beer: beer })
  end

  def display_glass(beer)
    return unless beer.glass.present?
    render(partial: "glass", locals: { beer: beer })
  end

  def display_food_pairings(beer)
    return unless beer.food_pairings.present?
    render(partial: "food_pairings", locals: { beer: beer })
  end

  def glass_image(glass)
    image_tag("glassware/#{glass.downcase}.jpg")
  end
end
