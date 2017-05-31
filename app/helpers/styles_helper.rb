module StylesHelper
  def color_class(style)
    classes = {
      "10" => "amber darken-2",
      "20" => "amber darken-4",
      "30" => "deep-orange darken-4",
      "100" => "brown darken-4"
    }
    return classes["10"] if style.srm_max.blank?
    key = classes.keys.detect { |k| k.to_i >= style.srm_max }
    classes[key]
  end
end
