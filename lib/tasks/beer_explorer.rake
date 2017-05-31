namespace :beer_explorer do
  desc "Import styles and beers from BreweryDB api"
  task import: :environment do
    importer = Importer.new
    importer.fetch_styles
    importer.fetch_beers
  end
end
