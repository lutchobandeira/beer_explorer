class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string  :original_id
      t.string  :category_original_id
      t.string  :name
      t.string  :short_name
      t.text    :description
      t.integer :ibu_min
      t.integer :ibu_max
      t.decimal :abv_min
      t.decimal :abv_max
      t.integer :srm_min
      t.integer :srm_max
      t.decimal :og_min
      t.decimal :og_max
      t.decimal :fg_min
      t.decimal :fg_max

      t.timestamps
    end
  end
end
