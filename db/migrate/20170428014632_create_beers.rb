class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string  :original_id
      t.string  :name
      t.text    :description
      t.text    :food_pairings
      t.decimal :original_gravity
      t.decimal :abv
      t.integer :ibu
      t.jsonb   :glass
      t.string  :style_original_id
      t.jsonb   :style
      t.boolean :is_organic
      t.jsonb   :labels
      t.string  :serving_temperature
      t.string  :servingTemperature_display
      t.string  :status
      t.string  :status_display
      t.string  :available_id
      t.jsonb   :available
      t.string  :beer_variation_id
      t.jsonb   :beer_variation
      t.string  :year

      t.timestamps
    end
  end
end
