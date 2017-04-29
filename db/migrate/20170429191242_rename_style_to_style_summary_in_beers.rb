class RenameStyleToStyleSummaryInBeers < ActiveRecord::Migration[5.0]
  def change
    rename_column :beers, :style, :style_summary
  end
end
