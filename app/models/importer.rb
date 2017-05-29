class Importer
  def initialize
    @brewery_db = BreweryDB::Client.new do |config|
      config.api_key = Figaro.env.brewerydb_api_key
    end
  end

  def fetch_styles
    styles = @brewery_db.styles.all
    styles.each do |remote_style|
      remote_style[:original_id]          = remote_style.delete(:id)
      remote_style[:category_original_id] = remote_style.delete(:category_id)

      style = Style.where(original_id: remote_style.original_id).first_or_create

      remote_style.delete_if { |key, _| !style.attributes.keys.include?(key) }

      if style.update_attributes(remote_style)
        Rails.logger.info "Retrieved with success: #{remote_style.original_id}"
      else
        Rails.logger.error "Error on retrieving: #{remote_style.original_id}"
      end
    end
    Rails.logger.info "Done."
  end

  def fetch_beers
    existing_style_ids = Beer.select("style_original_id").distinct.pluck(:style_original_id)
    Style.where.not(original_id: existing_style_ids).each do |style|
      beers = @brewery_db.beers.all(styleId: style.original_id, hasLabels: "Y", withBreweries: "Y")
      beers.each do |remote_beer|
        remote_beer[:original_id]       = remote_beer.delete(:id)
        remote_beer[:style_summary]     = remote_beer.delete(:style)
        remote_beer[:style_original_id] = style.original_id

        beer = Beer.where(original_id: remote_beer.original_id).first_or_create

        remote_beer.delete_if { |key, _| !beer.attributes.keys.include?(key) }

        if beer.update_attributes(remote_beer)
          Rails.logger.info "Retrieved with success: #{remote_beer.original_id}"
        else
          Rails.logger.error "Error on retrieving: #{remote_beer.original_id}"
        end
      end
    end
    Rails.logger.info "Done."
  end
end
