class RenameServingTemperatureDisplayInBeers < ActiveRecord::Migration[5.0]
  def change
    rename_column :beers, :servingTemperature_display, :serving_temperature_display
  end
end
