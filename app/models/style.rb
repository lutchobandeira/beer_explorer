class Style < ApplicationRecord
  has_many :beers, primary_key: "original_id", foreign_key: "style_original_id"
  validates :original_id, presence: true

  scope :filter, -> (srm_range, ibu_range, abv_range) { where("ibu_min >= ? and ibu_max <= ? and ibu_min >= ? and ibu_max <= ? and abv_min >= ? and abv_max < ?", srm_range.first.to_i, srm_range.last.to_i, ibu_range.first.to_i, ibu_range.last.to_i, abv_range.first.to_i, abv_range.last.to_i) }
end
