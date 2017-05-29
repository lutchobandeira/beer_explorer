class AddBreweriesToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :breweries, :jsonb
  end
end
